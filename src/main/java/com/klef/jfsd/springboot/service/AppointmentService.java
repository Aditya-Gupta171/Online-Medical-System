package com.klef.jfsd.springboot.service;

import java.util.List;
import com.klef.jfsd.springboot.model.Appointment;

public interface AppointmentService {
    Appointment createAppointment(Appointment appointment, int patientId);
    List<Appointment> getAppointmentsByPatient(int patientId);
    List<Appointment> getAppointmentsByDoctorId(int doctorId);
    
    
    
}