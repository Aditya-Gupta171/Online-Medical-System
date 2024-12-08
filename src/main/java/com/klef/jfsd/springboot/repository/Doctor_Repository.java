package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.doctor;

@Repository
public interface Doctor_Repository extends JpaRepository<doctor, Integer> {

	@Query("select d from doctor d where d.email=?1 and d.password=?2 ")
	public doctor checkDoctorLogin(String email,String password);
}
