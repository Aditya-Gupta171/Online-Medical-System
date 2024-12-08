package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.patient;

public interface Patient_Service {
	
	public String PatientRegistration(patient p);
	public patient checkPatientLogin(String email,String password);
	
	public String updatepatient(patient patient);
}
