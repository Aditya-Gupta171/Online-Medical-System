package com.klef.jfsd.springboot.controller;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.klef.jfsd.springboot.model.Appointment;
import com.klef.jfsd.springboot.model.doctor;
import com.klef.jfsd.springboot.model.patient;
import com.klef.jfsd.springboot.repository.Patient_Repository;
import com.klef.jfsd.springboot.service.AppointmentService;
import com.klef.jfsd.springboot.service.Doctor_Service;

import jakarta.servlet.http.HttpSession;

@Controller
public class AppointmentController {

    @Autowired
    private AppointmentService appointmentService;

    @Autowired
    private Doctor_Service doctorService; // Service to fetch doctors
    
    @Autowired
    private Patient_Repository patient_Repository;

    // Show the appointment booking form
    @GetMapping("/bookAppointment")
    public String showAppointmentForm(Model model) {
        List<doctor> doctors = doctorService.getAllDoctors(); // Fetch all doctors
        model.addAttribute("doctors", doctors); // Add doctors to the model
        model.addAttribute("appointment", new Appointment()); // Add an empty appointment object
        return "bookAppointment"; // Return view name (JSP/HTML form for booking appointment)
    }

    // Book an appointment after form submission
    @PostMapping("/bookAppointment")
    public String bookAppointment(@RequestParam("appointmentDate") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) String appointmentDate,
            @RequestParam("appointmentTime") String appointmentTime,
            @RequestParam("doctorId") int doctorId,
            @RequestParam("patientId") int patientId,
            @RequestParam("purpose") String purpose,
            Model model){
        try {
            // Fetch the selected doctor by ID
            doctor selectedDoctor = doctorService.getDoctorById(doctorId);
            if (selectedDoctor == null) {
                model.addAttribute("error", "Doctor not found.");
                return "bookAppointment";
            }

            // Create and set appointment details
            Appointment appointment = new Appointment();
            appointment.setAppointmentDate(LocalDateTime.parse(appointmentDate + "T" + appointmentTime));
            appointment.setDoctorName(selectedDoctor.getName());
            appointment.setDepartment(selectedDoctor.getSpeciality());
            appointment.setDoctorId(selectedDoctor.getId());
            appointment.setPatientId(patientId);
            appointment.setPurpose(purpose);

            // Save the appointment
            Appointment bookedAppointment = appointmentService.createAppointment(appointment, patientId);

            if (bookedAppointment != null) {
                model.addAttribute("appointments", appointmentService.getAppointmentsByPatient(patientId));
                model.addAttribute("message", "Appointment booked successfully!");
                return "payment"; // Return the view displaying booked appointments
            } else {
                model.addAttribute("error", "Failed to book appointment due to a service error.");
                return "bookAppointment";
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("error", "An unexpected error occurred: " + e.getMessage());
            return "bookAppointment";
        }
    }

    // Display appointments for a logged-in patient
    @GetMapping("/yourAppointments")
    public String showAppointments(HttpSession session, Model model) {
        patient p = (patient) session.getAttribute("p");

        if (p == null) {
            model.addAttribute("error", "You must be logged in to view your appointments.");
            return "errorPage"; // Return an error page if the patient is not logged in
        }

        int patientId = p.getId();
        List<Appointment> appointments = appointmentService.getAppointmentsByPatient(patientId);
        model.addAttribute("appointments", appointments);
        return "yourAppointments"; // Return the view displaying the patient's appointments
    }
    
    @GetMapping("doctorviewappoit")
    public String doctorviewappoit(HttpSession session, Model model) {
        doctor d = (doctor) session.getAttribute("d");

        if (d == null) {
            model.addAttribute("error", "You must be logged in to view your patients.");
            return "errorPage";
        }

        int doctorId = d.getId();
        List<Appointment> appointments = appointmentService.getAppointmentsByDoctorId(doctorId);

        // Fetch all patient IDs involved in these appointments
        List<Integer> patientIds = appointments.stream()
            .map(Appointment::getPatientId)
            .distinct()
            .toList();

        // Fetch patient details for these IDs
        List<patient> patients = patient_Repository.findAllById(patientIds);

        // Create a map of patientId to patientName
        Map<Integer, String> patientNameMap = patients.stream()
            .collect(Collectors.toMap(patient::getId, patient::getName));

        model.addAttribute("appointments", appointments);
        model.addAttribute("patientNameMap", patientNameMap);

        return "doctorviewappoit";
    }
    
    @PostMapping("/processPayment")
    public String processPayment(@RequestParam("patientName") String patientName,
                                 @RequestParam("appointmentId") String appointmentId,
                                 @RequestParam("cardNumber") String cardNumber,
                                 @RequestParam("expiryDate") String expiryDate,
                                 @RequestParam("cvv") String cvv,
                                 Model model) {
        // Basic validation (add real payment processing logic here)
        if (cardNumber.length() != 16 || cvv.length() != 3) {
            model.addAttribute("error", "Invalid card details. Please try again.");
            return "payment"; // Redirect back to the payment page with an error
        }

        // If payment is successful
        model.addAttribute("success", "Payment successful for Appointment ID: " + appointmentId);
        return "paymentSuccess"; // Create a success page or redirect accordingly
    }



}
