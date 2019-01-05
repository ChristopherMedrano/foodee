package com.foodee.models;

import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;

public class Login {
	
	@Column(name="email")
	@Email(message="invalid email address")
	@NotNull(message="email is required")
	@Size(min=1, message ="email is required")
	private String email;
	
	@Column(name="password")
	@NotNull(message="password is required")
	@Size(min=8, max=16, message ="password must be between 8-16 characters")
	private String password;
	
	public Login() {
		this.email = null;
		this.password = null;
	}
	
	public Login(String email, String password) {
		this.email = email;
		this.password = password;
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
