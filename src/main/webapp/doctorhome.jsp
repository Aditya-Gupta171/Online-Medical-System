<%@page import="com.klef.jfsd.springboot.model.doctor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% doctor d = (doctor) session.getAttribute("d"); %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Doctor Dashboard</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <%@include file="doctornavbar.jsp" %>

    <div class="welcome-container">
        <h2>Welcome Dr. <%= d.getName() %></h2>
        <p>Manage your patients, appointments, and medical records with ease. Your role as a doctor is crucial in shaping the health of your patients. Let's get started!</p>
    </div>

    <div class="dashboard-container">
        <div class="card">
            <h3>View Patients</h3>
            <a href="#">View All Patients</a>
        </div>
        <div class="card">
            <h3>Appointments</h3>
            <a href="doctorviewappoit">Manage Appointments</a>
        </div>
        <div class="card">
            <h3>Medical Records</h3>
            <a href="medicalrecords.jsp">View Medical Records</a>
        </div>
    </div>

    <!-- Footer Section -->
    <div class="footer">
        <p>&copy; 2024 TeleCure. All rights reserved.</p>
        <p>Connect with us on <a href="https://www.facebook.com/TeleCure">Facebook</a> | <a href="https://twitter.com/TeleCure">Twitter</a> | <a href="https://www.linkedin.com/company/TeleCure">LinkedIn</a></p>
    </div>
</body>
</html>
