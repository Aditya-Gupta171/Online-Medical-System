package com.klef.jfsd.springboot.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.klef.jfsd.springboot.model.Appointment;
import com.klef.jfsd.springboot.repository.AppointmentRepository;

@Service
public class AppointmentServiceImpl implements AppointmentService {

    @Autowired
    private AppointmentRepository appointmentRepository;

    @Override
    public Appointment createAppointment(Appointment appointment, int patientId) {
        appointment.setPatientId(patientId);
        return appointmentRepository.save(appointment);
    }

    @Override
    public List<Appointment> getAppointmentsByPatient(int patientId) {
        return appointmentRepository.findByPatientId(patientId);
    }

 @Override
 public List<Appointment> getAppointmentsByDoctorId(int doctorId) {

  return appointmentRepository.findAppointmentsByDoctorId(doctorId);
 }
}