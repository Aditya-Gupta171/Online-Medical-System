package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.doctor;
import com.klef.jfsd.springboot.repository.Doctor_Repository;

@Service
public class DoctorServiceImpl implements Doctor_Service {
	
	@Autowired
	private Doctor_Repository doctor_Repository;
	
	@Override
	public String DoctorRegistration(doctor d) {
		
		doctor_Repository.save(d);
		return "Doctor Registred Scucessfully";
	}

	@Override
	public doctor checkDoctorLogin(String email, String password) {
		
		return doctor_Repository.checkDoctorLogin(email, password);
	}

	@Override
	public String updatedoctor(doctor doctor) {
		
		doctor d=doctor_Repository.findById(doctor.getId()).get();
		
		d.setName(doctor.getName());
		d.setDob(doctor.getDob());
		d.setPassword(doctor.getPassword());
		d.setContact(doctor.getContact());
		d.setQualification(doctor.getQualification());
		d.setSpeciality(doctor.getSpeciality());
		d.setExperience(doctor.getExperience());
		
		doctor_Repository.save(d);
		
		return "Customer Added Successfully";
	}
	
	
	@Override
    public List<doctor> getAllDoctors() {
        return doctor_Repository.findAll();
    }

    @Override
    public doctor getDoctorById(int id) {
        Optional<doctor> doc = doctor_Repository.findById(id);
        return doc.orElse(null);
    }
}
