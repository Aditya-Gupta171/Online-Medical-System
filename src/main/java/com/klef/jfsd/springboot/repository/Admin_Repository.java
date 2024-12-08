package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.admin;

@Repository
public interface Admin_Repository extends JpaRepository<admin, String> {
	
	@Query("select a from admin a where a.username=?1 and a.password=?2")
	public admin checkAdminLogin(String uname, String pwd);

}
