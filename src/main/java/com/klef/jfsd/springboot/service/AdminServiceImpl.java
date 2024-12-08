package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.admin;
import com.klef.jfsd.springboot.model.doctor;
import com.klef.jfsd.springboot.model.patient;
import com.klef.jfsd.springboot.repository.Admin_Repository;
import com.klef.jfsd.springboot.repository.Doctor_Repository;
import com.klef.jfsd.springboot.repository.Patient_Repository;

@Service
public class AdminServiceImpl implements Admin_Service {
	
	@Autowired
	private Patient_Repository patient_Repository;
	@Autowired
	private Doctor_Repository doctor_Repository;
	@Autowired
	private Admin_Repository admin_Repository;

	@Override
	public List<patient> viewallpatients() {
		return patient_Repository.findAll();
	}

	@Override
	public List<doctor> viewalldoctors() {
		
		return doctor_Repository.findAll();
	}

	@Override
	public admin checkAdminLogin(String unmae, String pwd) {
		
		return admin_Repository.checkAdminLogin(unmae, pwd);
	}

	@Override
	public long patientcount() {
		return patient_Repository.count();
	}

	@Override
	public long doctorcount() {

		return doctor_Repository.count();
	}

	@Override
	public String deletedoc(int eid) {
		
		doctor_Repository.deleteById(eid);
		return "Deleted Successfully";
	}

	@Override
	public String deletepat(int eid) {

		patient_Repository.deleteById(eid);
		return "Deleted Successfully";
	}

	@Override
	public doctor displaydoctorbyid(int id) {
		
		return doctor_Repository.findById(id).get();
	}

	@Override
	public patient displaypatientbyid(int id) {

		return patient_Repository.findById(id).get();
	}
}
