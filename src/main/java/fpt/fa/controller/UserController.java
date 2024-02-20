package fpt.fa.controller;

import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fpt.fa.entities.User;
import fpt.fa.service.RoleService;
import fpt.fa.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserService userService;

	@Autowired
	RoleService roleService;

	@GetMapping("/list")
	public String showList(Model model) {
		List<User> userList = userService.findAll();
		model.addAttribute("fromListUser", userList);
		return "listUser";

	}

	@GetMapping("/create")
	public String showCreate(Model model) {
		model.addAttribute("rolelist", roleService.findAll());
		model.addAttribute("formUser", new User());
		return "create/user";
	}

	@PostMapping("/create")
	public String doCreate(@ModelAttribute(name = "formUser") User user, BindingResult result) {
		if (user.getStatus() == null || user.getStatus().isEmpty()) {
			// Nếu không có giá trị, thiết lập giá trị mặc định là "active"
			user.setStatus("active");
		}
		userService.save(user);
		return "redirect:/user/list";
	}

	@RequestMapping(value = "/updateStatus/{id}", method = RequestMethod.GET)
	public String displayUpdateStatus(@PathVariable(name = "id") String id, Model model) {
		// Retrieve user by id
		User user = userService.findById(id);

		if (user != null) {
			// Thực hiện cập nhật trạng thái
			// Assuming you want to toggle between "active" and "disable"
			if ("active".equalsIgnoreCase(user.getStatus())) {
				user.setStatus("disable");
			} else if ("disable".equalsIgnoreCase(user.getStatus())) {
				user.setStatus("active");
			}

			// Lưu lại người dùng đã cập nhật
			userService.update(user);
		}

		return "redirect:/user/list"; // Assuming this is the view name
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public String displayUpdate(@PathVariable(name = "id") String id, Model model) {
		model.addAttribute("rolelist", roleService.findAll());
		model.addAttribute("user", userService.findById(id));
		return "updateUser";
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
	public String update(@PathVariable(name = "id") String id, User user, Model model) {
		user.setUserID(id);
		userService.save(user);
		return "redirect:/user/list";
	}

	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable(name = "id") String id, User user, Model model) {
		User userToDelete = userService.findById(id);

		if (userToDelete != null) {
			LocalTime deleteTime = LocalTime.now();
			userToDelete.setDeleted_at(deleteTime);
			userService.update(userToDelete);

			// userService.delete(userToDelete);
		}

		return "redirect:/user/list";
	}
}
