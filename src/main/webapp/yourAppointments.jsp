<%@page import="com.klef.jfsd.springboot.model.patient"%>
<%@ page import="com.klef.jfsd.springboot.model.Appointment" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<% 
    patient patient = (patient) session.getAttribute("p");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Your Appointments</title>
</head>
<body>
	<%@include file="patientnavbar.jsp" %>
    <div class="container mt-5">
        <h2 align="center">Your Appointments</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Appointment ID</th>
                    <th>Doctor Name</th>
                    <th>Department</th>
                    <th>Appointment Date</th>
                    <th>Appointment Time</th>
                    <th>Purpose</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="appointment" items="${appointments}">
                    <tr>
                        <td>${appointment.id}</td>
                        <td>${appointment.doctorName}</td>
                        <td>${appointment.department}</td>
                        <td>${appointment.appointmentDate.toLocalDate()}</td> <!-- Date part -->
                        <td>${appointment.appointmentDate.toLocalTime()}</td> <!-- Time part -->
                        <td>${appointment.purpose}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
