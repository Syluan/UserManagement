//package fpt.fa.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.data.domain.Page;
//import org.springframework.data.domain.PageRequest;
//import org.springframework.data.domain.Pageable;
//import org.springframework.data.domain.Sort;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.validation.BindingResult;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import fpt.fa.entities.KhachHang;
//import fpt.fa.service.KhachHangService;
//
//@Controller
//@RequestMapping("/khachHang")
//public class KhachHangController {
//	
//	@Autowired
//	KhachHangService khachHangService;
//	
//	
//	@GetMapping("/list")
//	public String showList(Model model, @RequestParam(name = "pageNumber", required = false, defaultValue = "1") int pageNumber,
//			@RequestParam(name = "pageSize", required = false, defaultValue = "4") int pageSize,
//			@RequestParam(name = "search", required = false, defaultValue = "") String search) {	
//		
//		Pageable pageable = PageRequest.of(pageNumber - 1, pageSize, Sort.by(Sort.Order.desc("maKH"), Sort.Order.asc("tenKH")));
//		Page<KhachHang> khachhangList = khachHangService.findAll(search, pageable);
//		
//		model.addAttribute("fromListKhachHang", khachhangList.getContent());
//		model.addAttribute("pageSize", pageSize);
//		model.addAttribute("pageNumber", pageNumber);
//		model.addAttribute("search", search);
//		model.addAttribute("totalPages", khachhangList.getTotalPages());
//		model.addAttribute("totalElement", khachhangList.getTotalElements());
//        		
//		return "listKhachHang";
//	
//	}
//	
//	@GetMapping("/create")
//	public String showCreate(Model model) {
//		model.addAttribute("formKhachHang", new KhachHang());
//		return "create/khachHang";
//	}
//	@PostMapping("/create")
//	public String doCreate(@ModelAttribute(name ="formKhachHang")KhachHang khachHang, BindingResult result) {
//		khachHangService.save(khachHang);
//		return "redirect:/khachHang/list";
//	}
//
//	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
//	public String delete(@PathVariable(name = "id") String id, Model model) {
//		khachHangService.delete(id);
//		return "redirect:/khachHang/list";
//	}
//	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
//	public String displayUpdate(@PathVariable(name = "id") String id, Model model) {
//		model.addAttribute("khachHang", khachHangService.findById(id));
//		return "updateKhachHang";
//	}
//
//	@RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
//	public String update(@PathVariable(name = "id") String id, KhachHang khachHang, Model model) {
////		System.out.println("vào rồi");
//		khachHang.setMaKH(id);
//		khachHangService.update(khachHang);
//		return "redirect:/khachHang/list";
//	}
//	
//
//}
