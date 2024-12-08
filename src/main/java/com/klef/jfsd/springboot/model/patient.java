package com.klef.jfsd.springboot.model;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class patient {

	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)  //auto increment 
	@Column(name="patient_id")
	private int id;
	
	@Column(name="patient_name",nullable=false,length=100)
	private String name;
	
	@Column(name="patient_gender",nullable=false,length=10)
	private String gender;
	
	@Column(name="patient_dob",nullable=false,length=20)
	private String dob;
	
	@Column(name="patient_email",nullable=false,unique=true,length=30)
	private String email;
	
	@Column(name="patient_password",nullable=false,length=20)
	private String password;
	
	@Column(name="patient_contact",nullable=false,unique=true,length=15)
	private String contact;
	
	@Column(name="patient_medicalhistory",nullable=false,length=200)
	private String medicalhistory;

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

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getMedicalhistory() {
		return medicalhistory;
	}

	public void setMedicalhistory(String medicalhistory) {
		this.medicalhistory = medicalhistory;
	}
	
	
	
}
