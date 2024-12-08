<%@page import="com.klef.jfsd.springboot.model.patient"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% patient patient=(patient)session.getAttribute("p");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Profile Patient</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
   <%@include file="patientnavbar.jsp" %>
   <div class="profile-container">
       <h2>My Profile</h2>
       <div class="profile-details">
           <p><strong>ID:</strong> <%=patient.getId()%></p>
           <p><strong>NAME:</strong> <%=patient.getName()%></p>
           <p><strong>DOB:</strong> <%=patient.getDob()%></p>
           <p><strong>GENDER:</strong> <%=patient.getGender()%></p>
           <p><strong>EMAIL:</strong> <%=patient.getEmail()%></p>
           <p><strong>CONTACT:</strong> <%=patient.getContact()%></p>
       </div>
   </div>
   
    <!-- Footer Section -->
    <div class="footer">
        <p>&copy; 2024 TeleCure. All rights reserved.</p>
        <p>Connect with us on <a href="https://www.facebook.com/TeleCure">Facebook</a> | <a href="https://twitter.com/TeleCure">Twitter</a> | <a href="https://www.linkedin.com/company/TeleCure">LinkedIn</a></p>
    </div>
</body>
</html>
