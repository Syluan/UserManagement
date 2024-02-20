package fpt.fa.entities;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "role_table")
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor

public class Role {

	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int roleID;

	@Column
	private String roleName;

	@Column
	private String moTa;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "role")
	private Set<User> users;

}
