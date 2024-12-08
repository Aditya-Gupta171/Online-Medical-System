<%@page import="com.klef.jfsd.springboot.model.patient"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Patient Profile </title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
   <%@include file="adminnavbar.jsp" %>
   <div class="profile-container">
       <h2>My Profile</h2>
       <div class="profile-details">
           <p><strong>ID:</strong> <c:out value="${patient.id }"></c:out></p>
           <p><strong>NAME:</strong> <c:out value="${patient.name }"></c:out></p>
           <p><strong>DOB:</strong> <c:out value="${patient.dob }"></c:out></p>
           <p><strong>GENDER:</strong> <c:out value="${patient.gender }"></c:out></p>
           <p><strong>EMAIL:</strong> <c:out value="${patient.email }"></c:out></p>
           <p><strong>CONTACT:</strong> <c:out value="${patient.contact }"></c:out></p>
       </div>
   </div>
   
    <!-- Footer Section -->
    <div class="footer">
        <p>&copy; 2024 TeleCure. All rights reserved.</p>
        <p>Connect with us on <a href="https://www.facebook.com/TeleCure">Facebook</a> | <a href="https://twitter.com/TeleCure">Twitter</a> | <a href="https://www.linkedin.com/company/TeleCure">LinkedIn</a></p>
    </div>
</body>
</html>
