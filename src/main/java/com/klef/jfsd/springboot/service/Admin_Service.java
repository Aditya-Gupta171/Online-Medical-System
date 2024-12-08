package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.admin;
import com.klef.jfsd.springboot.model.doctor;
import com.klef.jfsd.springboot.model.patient;

public interface Admin_Service {
	
	public List<patient> viewallpatients();
	public List<doctor> viewalldoctors();
	public admin checkAdminLogin(String unmae,String pwd);
	public long patientcount();
	public long doctorcount();
	public String deletedoc(int eid);
	public String deletepat(int eid);
	
	public doctor displaydoctorbyid(int id);
	public patient displaypatientbyid(int id);


}
