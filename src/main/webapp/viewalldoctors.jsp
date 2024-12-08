<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All Doctors</title>
</head>
<body>
<%@include file="adminnavbar.jsp" %>

<h3 align="center">View All Doctors</h3>
<h4>Total Doctors: <c:out value="${count}"></c:out></h4>
<table align="center" border="2">
<tr>
<th>ID</th>
<th>NAME</th>
<th>GENDER</th>
<th>DATE OF BIRTH</th>
<th>EMAIL</th>
<th>PASSWORD</th>
<th>SALARY</th>
<th>CONTACT</th>
<th>QUALIFICATION</th>
<th>EXPERIENCE</th>
<th>STATUS</th>
</tr>
<c:forEach items="${doctorslist}" var="doctor">
<tr>
<td><c:out value="${doctor.id}"></c:out></td>
<td><c:out value="${doctor.name}"></c:out></td>
<td><c:out value="${doctor.gender}"></c:out></td>
<td><c:out value="${doctor.dob}"></c:out></td>
<td><c:out value="${doctor.email}"></c:out></td>
<td><c:out value="${doctor.password}"></c:out></td>
<td><c:out value="${doctor.contact}"></c:out></td>
<td><c:out value="${doctor.salary}"></c:out></td>
<td><c:out value="${doctor.qualification}"></c:out></td>
<td><c:out value="${doctor.experience}"></c:out></td>
<td><c:out value="${doctor.status}"></c:out></td>


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