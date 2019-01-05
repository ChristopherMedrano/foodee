package com.foodee.models;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;

@Entity
@Table(name="users")
public class Users {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="userid")
	private int userId;
	
	@Column(name="email")
	@Email(message="invalid email address")
	@NotNull(message="email is required")
	@Size(min=1, message ="email is required")
	private String email;
	
	@Column(name="password")
	@NotNull(message="password is required")
	@Size(min=8, max=16, message ="password must be between 8-16 characters")
	//@Pattern(regexp="^[a-zA-Z0-9] ", message ="password must be letters and digits")
	private String password;
	
	@Column(name="firstname")
	@NotNull (message="firstname is required")
	@Size(min=1, message ="first name required")
	private String firstName;
	
	@Column(name="lastname")
	@NotNull (message="last name is required")
	@Size(min=1, message ="last name required")
	private String lastName;
	private String dob;
	
	@Column(name="height")
	@Min(value=0, message="must be greater than 0")
	@Max(value=999, message="invalid height")
	private Integer height;
	private String gender;
	
	@Column(name="weight")
	@Min(value=0, message="must be greater than 0")
	@Max(value=999, message="invalid weight")
	private Integer weight;
	
	@Column(name="goalweight")
	@Min(value=0, message="must be greater than 0")
	@Max(value=999, message="invalid weight")
	private Integer goalWeight;
	
	@OneToMany(cascade= {CascadeType.ALL})
	@JoinColumn(name="userId")
	private List<FoodLog> foodLogs;
	
	public Users() {
		this.userId = 0;
		this.email = null;
		this.password = null;
		this.firstName = null;
		this.lastName = null;
		this.dob = null;
		this.height = 0;
		this.gender = null;
		this.weight = 0;
		this.goalWeight = 0;
	}

	public Users(int userId, String email, String password, String firstName, 
			String lastName, Integer height, String dob, String gender, Integer weight, Integer goalWeight) {
		this.userId = userId;
		this.email = email;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.dob = dob;
		this.height = height;
		this.gender = gender;
		this.weight = weight;
		this.goalWeight = goalWeight;
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
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public Integer getHeight() {
		return height;
	}
	public void setHeight(Integer height) {
		this.height = height;
	}
	public int getUserId() {
		return userId;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getGender() {
		return this.gender;
	}
	public Integer getWeight() {
		return this.weight;
	}
	public void setWeight(Integer weight) {
		this.weight = weight;
	}
	public Integer getGoalWeight() {
		return this.goalWeight;
	}
	public void setGoalWeight(Integer goalWeight) {
		this.weight = goalWeight;
	}
	public List<FoodLog> getFoodLogs() {
		return foodLogs;
	}

	public void setFoodLogs(List<FoodLog> foodLogs) {
		this.foodLogs = foodLogs;
	}
	@Override
	public String toString() {
		return "Users [userId=" + userId + ", email=" + email + ", password=" + password + ", firstName=" + firstName
				+ ", lastName=" + lastName + ", dob=" + dob + ", height="
				+ height + ", gender=" + gender + ", weight=" + weight + ", goalWeight=" + goalWeight + "]";
	}
	
}
