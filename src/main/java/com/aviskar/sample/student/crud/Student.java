package com.aviskar.sample.student.crud;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotBlank;

@Entity
public class Student {

	@Id
	@GeneratedValue
	private Long id;

	@Column(name = "registration_no")
	@Pattern(regexp = "\\d+")
	private String registrationNo;

	@Column(name = "full_name")
	@Pattern(regexp = "[A-Z][a-zA-Z]*( [A-Z][a-zA-Z]*)*")
	private String fullName;

	@Column(name = "address")
	@NotBlank
	private String address;

	@Column(name = "email")
	@Pattern(regexp = ".+@.+(\\..+)+")
	private String email;

	@Column(name = "mobile_no")
	@Pattern(regexp = "\\d{10}")
	private String mobileNo;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getRegistrationNo() {
		return registrationNo;
	}

	public void setRegistrationNo(String registrationNo) {
		this.registrationNo = registrationNo;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
}