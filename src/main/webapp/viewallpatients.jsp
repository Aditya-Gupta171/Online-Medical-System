<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All Patients</title>
</head>
<body>
<%@include file="adminnavbar.jsp" %>
<h3 align="center">View All Patients</h3>
<h4>Total Patients: <c:out value="${count}"></c:out></h4>
<table align="center" border="2">
<tr>
<th>ID</th>
<th>NAME</th>
<th>GENDER</th>
<th>DATE OF BIRTH</th>
<th>EMAIL</th>
<th>PASSWORD</th>
<th>CONTACT</th>
<th>MEDICAL HISTORY</th>
</tr>
<c:forEach items="${patientslist}" var="patient">
<tr>
<td><c:out value="${patient.id}"></c:out></td>
<td><c:out value="${patient.name}"></c:out></td>
<td><c:out value="${patient.gender}"></c:out></td>
<td><c:out value="${patient.dob}"></c:out></td>
<td><c:out value="${patient.email}"></c:out></td>
<td><c:out value="${patient.password}"></c:out></td>
<td><c:out value="${patient.contact}"></c:out></td>
<td><c:out value="${patient.medicalhistory}"></c:out></td>


</tr>
</c:forEach>


</table>

 <!-- Footer Section -->
    <div class="footer">
        <p>&copy; 2024 TeleCure. All rights reserved.</p>
        <p>Connect with us on <a href="https://www.facebook.com/TeleCure">Facebook</a> | <a href="https://twitter.com/TeleCure">Twitter</a> | <a href="https://www.linkedin.com/company/TeleCure">LinkedIn</a></p>
    </div>
</body>
</html>