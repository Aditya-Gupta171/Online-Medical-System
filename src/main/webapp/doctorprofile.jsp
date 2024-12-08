<%@page import="com.klef.jfsd.springboot.model.doctor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% doctor d = (doctor)session.getAttribute("d"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Profile</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
   <%@include file="doctornavbar.jsp" %><br/>
   <div class="profile-container">
       <h2>My Profile</h2>
       <div class="profile-details">
           <p><strong>ID:</strong> <%=d.getId()%></p>
           <p><strong>NAME:</strong> <%=d.getName()%></p>
           <p><strong>DOB:</strong> <%=d.getDob()%></p>
           <p><strong>GENDER:</strong> <%=d.getGender()%></p>
           <p><strong>EMAIL:</strong> <%=d.getEmail()%></p>
           <p><strong>SALARY:</strong> <%=d.getSalary()%></p>
           <p><strong>CONTACT:</strong> <%=d.getContact()%></p>
           <p><strong>QUALIFICATION:</strong> <%=d.getQualification()%></p>
           <p><strong>SPECIALITY:</strong> <%=d.getSpeciality()%></p>
           <p><strong>EXPERIENCE:</strong> <%=d.getExperience()%> Years</p>
       </div>
   </div>
   
    <!-- Footer Section -->
    <div class="footer">
        <p>&copy; 2024 TeleCure. All rights reserved.</p>
        <p>Connect with us on <a href="https://www.facebook.com/TeleCure">Facebook</a> | <a href="https://twitter.com/TeleCure">Twitter</a> | <a href="https://www.linkedin.com/company/TeleCure">LinkedIn</a></p>
    </div>
</body>
</html>
