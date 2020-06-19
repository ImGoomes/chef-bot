package br.com.usoftware.chefbot.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name = "tb_user")
public class User {
	 
	@Id @Column(name="id_user")
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="sequence_tb_user")
	@SequenceGenerator(name="sequence_tb_user", sequenceName="sequence_tb_user", allocationSize=1)
	private Long id;
	
	@NotBlank(message = "Campo Obrigatório!")
	private String name;
	
	@Email(message = "E-mail Inválido!")
	@NotBlank
	private String email;
	
	@NotBlank(message = "Campo Obrigatório!")
	private String password;
	
	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
}
