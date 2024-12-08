package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class doctor {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="doctor_id")
	private int id;
	
	@Column(name="doctor_name",nullable=false,length=100)
	private String name;
	
	@Column(name="doctor_gender",nullable=false,length=10)
	private String gender;
	
	@Column(name="doctor_dob",nullable=false,length=20)
	private String dob;
	
	@Column(name="doctor_email",nullable=false,unique=true,length=50)
	private String email;
	
	@Column(name="doctor_password",nullable=false,length=100)
	private String password;
	
	@Column(name="doctor_salary",nullable=false)
	private double salary;
	
	@Column(name="doctor_contact",nullable=false,unique=true,length=20)
	private String contact;
	
	@Column(name="doctor_qualification",nullable=false,length=100)
	private String qualification;
	
	@Column(name="doctor_experience",nullable=false)
	private int experience;
	
	@Column(name = "doctor_speciality", nullable = false, length = 100)
    private String speciality;
	
	@Column(name="doctor_status",nullable=false,length=50)
	private String status;
	
	
	

	public String getSpeciality() {
		return speciality;
	}

	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
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

	public double getSalary() {
		return salary;
	}

	public void setSalary(double salary) {
		this.salary = salary;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public int getExperience() {
		return experience;
	}

	public void setExperience(int experience) {
		this.experience = experience;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
	

}
