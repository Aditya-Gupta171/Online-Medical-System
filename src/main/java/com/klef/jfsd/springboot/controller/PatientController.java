package com.klef.jfsd.springboot.controller;


import java.net.http.HttpRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.patient;
import com.klef.jfsd.springboot.service.Patient_Service;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class PatientController {

	@Autowired
	private Patient_Service patient_Service;
	
	@GetMapping("patientreg")
	public ModelAndView patientreg() {
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("patientreg");
		return mv;
		
	}
	
	@GetMapping("patientlogin")
	public ModelAndView patientlogin() {
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("patientlogin");
		return mv;
	}
	
	@PostMapping("insertpatient")
	public ModelAndView insertpatient(HttpServletRequest request) {
		
		String name=request.getParameter("pname");
		String gender=request.getParameter("pgender");
		String dob=request.getParameter("pdob");
		String email=request.getParameter("pemail");
		String pwd=request.getParameter("ppwd");
		String contact=request.getParameter("pcontact");
		String medicalhistory=request.getParameter("pmedicalhistory");
		
		patient p=new patient();
		
		p.setName(name);
		p.setGender(gender);
		p.setDob(dob);
		p.setEmail(email);
		p.setPassword(pwd);
		p.setContact(contact);
		p.setMedicalhistory(medicalhistory);
		
		String message=patient_Service.PatientRegistration(p);
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("patientregsuccess");
		mv.addObject("message", message);
		
		return mv;
	}
	
	@PostMapping("checkpatientlogin")
	public ModelAndView checkpatientlogin(HttpServletRequest request) {
		
		ModelAndView mv=new ModelAndView();
		
		String email=request.getParameter("pemail");
		String pwd=request.getParameter("ppwd");
		
		patient p=patient_Service.checkPatientLogin(email, pwd);
		
//		System.out.println("Email: " + email + ", Password: " + pwd);
//		System.out.println("Patient object: " + p); // Check if p is null or has expected data

		if(p!=null) {
			
			HttpSession session =request.getSession();
			
			session.setAttribute("p", p);  //p is session object
			
			mv.setViewName("patienthome");
		}
		else {
			mv.setViewName("patientlogin");
			mv.addObject("message1","Login Failed");
			mv.addObject("message2","Worng Username or Password");

		}
		
		return mv;
		
	}
	
	@GetMapping("patienthome")
	public ModelAndView patienthome() {
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("patienthome");
		return mv;
	}
	
	@GetMapping("patientprofile")
	public ModelAndView patientprofile() {
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("patientprofile");
		return mv;
	}
	
	@GetMapping("patientlogout")
	public ModelAndView patientlogout() {
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("patientlogin");
		return mv;
	}
	
	
	@GetMapping("updateprofile")
	public ModelAndView updatepatient() {
		
		ModelAndView mv=new ModelAndView("updatepatient");
		return mv;
	}
	
	@PostMapping("updatepat")
	public ModelAndView updatepat(HttpServletRequest request) {
		
		int id=Integer.parseInt(request.getParameter("pid"));
		String name=request.getParameter("pname");
		String gender=request.getParameter("pgender");
		String dob=request.getParameter("pdob");
		String pwd=request.getParameter("ppwd");
		String contact=request.getParameter("pcontact");
		String medicalhistory=request.getParameter("pmedicalhistory");
		
		patient p=new patient();
		
		p.setId(id);
		p.setName(name);
		p.setGender(gender);
		p.setDob(dob);
		p.setPassword(pwd);
		p.setContact(contact);
		p.setMedicalhistory(medicalhistory);
		
		String message=patient_Service.updatepatient(p);
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("patientlogin");
		mv.addObject("message", message);
		
		return mv;
	}
	
	
	
	
}
