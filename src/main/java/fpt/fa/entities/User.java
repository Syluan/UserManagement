package fpt.fa.entities;

import java.time.LocalTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "user_table")
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class User {
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "uuid")
	@GenericGenerator(name = "uuid", strategy = "uuid2")
	private String userID;
	
	@Column
	private String ho;
	
	@Column
	private String ten;
	
	@Column
	private String email;
	
	@Column
	private String soDienThoai;
	
	@Column
	private String donVi;
	
	@Column
	private String status;
	
	@Column
	private LocalTime deleted_at;
	
	@ManyToOne
	@JoinColumn(name = "roleID", referencedColumnName = "roleID")
	private Role role;

	@Override
	public String toString() {
		return "User [userID=" + userID + ", ho=" + ho + ", ten=" + ten + ", email=" + email + ", soDienThoai="
				+ soDienThoai + ", donVi=" + donVi + ", status=" + status + "]";
	}
	
	
	
}
