package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.doctor;

public interface Doctor_Service {
	
	public String DoctorRegistration(doctor d);
	public doctor checkDoctorLogin(String email,String password);
	
	public String updatedoctor(doctor doctor);
	
	public List<doctor> getAllDoctors();
	 doctor getDoctorById(int id);
}
