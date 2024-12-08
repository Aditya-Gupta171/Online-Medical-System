<%@page import="com.klef.jfsd.springboot.model.patient"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% patient patient=(patient)session.getAttribute("p");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Home - TeleCure</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
   <%@include file="patientnavbar.jsp" %>
   <div class="welcome-container">
       <h2>Welcome to TeleCure, <%=patient.getName()%>!</h2>
       <p>Your health is our priority. TeleCure is committed to providing seamless healthcare at your fingertips. Explore your dashboard below:</p>
   </div>
   <div class="dashboard-container">
       <div class="card">
           <h3>Your Appointments</h3>
           <a href="yourAppointments">View Details</a>
       </div>
       <div class="card">
           <h3>Book Appointment</h3>
           <a href="bookAppointment">Book Now</a>
       </div>
       <div class="card">
           <h3>Health Records</h3>
           <a href="#">View Records</a>
       </div>
   </div>
   
   <div class="information-container">
       <h3>About TeleCure</h3>
       <p>TeleCure is a leading healthcare platform designed to make medical services accessible, efficient, and patient-centric. Our mission is to bridge the gap between patients and healthcare providers with cutting-edge technology and compassionate care.</p>
       <p>We strive to ensure every patient receives personalized attention and a hassle-free experience. Thank you for choosing TeleCure as your healthcare partner.</p>
   </div>

    <!-- Footer Section -->
    <div class="footer">
        <p>&copy; 2024 TeleCure. All rights reserved.</p>
        <p>Connect with us on <a href="https://www.facebook.com/TeleCure">Facebook</a> | <a href="https://twitter.com/TeleCure">Twitter</a> | <a href="https://www.linkedin.com/company/TeleCure">LinkedIn</a></p>
    </div>
</body>
</html>
