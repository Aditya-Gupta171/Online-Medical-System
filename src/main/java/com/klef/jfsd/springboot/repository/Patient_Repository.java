package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;


import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.patient;

@Repository
public interface Patient_Repository extends JpaRepository<patient, Integer> {

	@Query("select p from patient p where p.email=?1 and p.password=?2 ")
	public patient checkPatientLogin(String email,String password);
}
