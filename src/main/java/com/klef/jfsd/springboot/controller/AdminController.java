package com.klef.jfsd.springboot.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.admin;
import com.klef.jfsd.springboot.model.doctor;
import com.klef.jfsd.springboot.model.patient;
import com.klef.jfsd.springboot.service.Admin_Service;
import com.klef.jfsd.springboot.service.Doctor_Service;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {

	@Autowired
	private Admin_Service admin_Service;
	
	@GetMapping("/")
	public ModelAndView home() {
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	
	@GetMapping("aboutus")
	public ModelAndView aboutus() {
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("aboutus");
		return mv;
	}
	
	@GetMapping("contact")
	public ModelAndView contact() {
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("contact");
		return mv;
	}
	
	@GetMapping("viewdoctorbyid")
	public ModelAndView viewdoctorbyid() {
		
		ModelAndView mv=new ModelAndView();

		List<doctor> doctors=admin_Service.viewalldoctors();
		mv.addObject("doctorslist",doctors); 
		
		mv.setViewName("viewdoctorbyid");
		return mv;
	}
	
	@GetMapping("viewpatientbyid")
	public ModelAndView viewpatientbyid() {
		
		ModelAndView mv=new ModelAndView();

		List<patient> patients=admin_Service.viewallpatients();
		mv.addObject("patientslist",patients); 
		
		mv.setViewName("viewpatientbyid");
		return mv;
	}
	
	@PostMapping("displaydoctor")
	public ModelAndView displaydoctor(HttpServletRequest request) {
		
		int id=Integer.parseInt(request.getParameter("id"));
		
		doctor d=admin_Service.displaydoctorbyid(id);
		ModelAndView mv=new ModelAndView("displaydoctor");
		mv.addObject("doctor",d);
		
		return mv;
	}
	
	@PostMapping("displaypatient")
	public ModelAndView displaypatient(HttpServletRequest request) {
		
		int id=Integer.parseInt(request.getParameter("id"));
		
		patient p=admin_Service.displaypatientbyid(id);
		ModelAndView mv=new ModelAndView("displaypatient");
		mv.addObject("patient",p);
		
		return mv;
	}
	
	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin() {
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request) {
		
		ModelAndView mv=new ModelAndView();
		
		String auser=request.getParameter("ausername");
		String apwd =request.getParameter("apassword");
		
		admin a= admin_Service.checkAdminLogin(auser, apwd);
		
		if(a!=null) {
			mv.setViewName("adminhome");   //login success
		}
		else {
			mv.setViewName("adminloginfail");
			mv.addObject("message","Login Failed");
		}
		
		return mv;
	}
	
	@GetMapping("adminhome")
	public ModelAndView adminhome() {
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminhome");
		return mv;
	}
	
	@GetMapping("viewallpatients")
	public ModelAndView viewallpatients() {
		
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewallpatients");
		
		long count =admin_Service.patientcount();
		mv.addObject("count",count);
		
		List<patient> patients=admin_Service.viewallpatients();
		mv.addObject("patientslist",patients);
		return mv;
	}
	
	@GetMapping("viewalldoctors")
	public ModelAndView viewalldoctors() {
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("viewalldoctors");
		
		long count =admin_Service.doctorcount();
		mv.addObject("count",count);
		
		List<doctor> doctors=admin_Service.viewalldoctors();
		mv.addObject("doctorslist",doctors);
		return mv;
		
}
	@GetMapping("deletedoctor")
	public ModelAndView deletedoctor() {
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("deletedoctor");
		
		long count =admin_Service.doctorcount();
		mv.addObject("count",count);
		
		List<doctor> doctors=admin_Service.viewalldoctors();
		mv.addObject("doctorslist",doctors);
		return mv;
		
}
	
	@GetMapping("deletedoc")
		public String delete(@RequestParam("id") int eid) {
			
		admin_Service.deletedoc(eid); 		
		return "redirect:/deletedoctor";
		
	}	
	
	@GetMapping("deletepatient")
	public ModelAndView deletepatient() {
		
		
		ModelAndView mv=new ModelAndView();
		mv.setViewName("deletepatient");
		
		long count =admin_Service.patientcount();
		mv.addObject("count",count);
		
		List<patient> patients=admin_Service.viewallpatients();
		mv.addObject("patientslist",patients);
		return mv;
	}
	
	@GetMapping("deletepat")
	public String deletepat(@RequestParam("id") int eid) {
		
	admin_Service.deletepat(eid); 		
	return "redirect:/deletepatient";
	
}
	
	

}
