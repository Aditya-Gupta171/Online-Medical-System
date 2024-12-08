<%@page import="com.klef.jfsd.springboot.model.doctor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Profile</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
   <%@include file="adminnavbar.jsp" %><br/>
   <div class="profile-container">
       <h2>Doctor Profile</h2>
       <div class="profile-details"> 
           <p><strong>ID:</strong> <c:out value="${doctor.id }"></c:out></p>
           <p><strong>NAME: </strong> <c:out value="${doctor.name }"></c:out></p>
           <p><strong>DOB:</strong> <c:out value="${doctor.dob }"></c:out> </p>
           <p><strong>GENDER:</strong> <c:out value="${doctor.gender }"></c:out> </p>
           <p><strong>EMAIL:</strong> <c:out value="${doctor.email }"></c:out> </p>
           <p><strong>SALARY:</strong> <c:out value="${doctor.salary }"></c:out></p>
           <p><strong>CONTACT:</strong> <c:out value="${doctor.contact }"></c:out> </p>
           <p><strong>QUALIFICATION:</strong> <c:out value="${doctor.qualification }"></c:out></p>
           <p><strong>SPECIALITY:</strong> <c:out value="${doctor.speciality}" /></p>           
           <p><strong>EXPERIENCE:</strong> <c:out value="${doctor.experience }"></c:out> Years</p>
       </div>
   </div>
   
    <!-- Footer Section -->
    <div class="footer">
        <p>&copy; 2024 TeleCure. All rights reserved.</p>
        <p>Connect with us on <a href="https://www.facebook.com/TeleCure">Facebook</a> | <a href="https://twitter.com/TeleCure">Twitter</a> | <a href="https://www.linkedin.com/company/TeleCure">LinkedIn</a></p>
    </div>
</body>
</html>