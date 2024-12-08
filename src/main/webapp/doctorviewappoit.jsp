<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Your Patients</title>
</head>
<body>
<%@include file="doctornavbar.jsp" %>
    <h2 align="center">Your Patients</h2>
    <table border="1">
        <thead>
            <tr>
                <th>Patient ID</th>
                <th>Patient Name</th>
                <th>Appointment Date</th>
                <th>Appointment Time</th>
                <th>Purpose</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="appointment" items="${appointments}">
                <tr>
                    <td>${appointment.patientId}</td> <!-- Patient ID -->
                    <td>${patientNameMap[appointment.patientId]}</td> <!-- Patient Name -->
                    <td>${appointment.appointmentDate.toLocalDate()}</td> <!-- Appointment Date -->
                    <td>${appointment.appointmentDate.toLocalTime()}</td> <!-- Appointment Time -->
                    <td>${appointment.purpose}</td> <!-- Purpose of Appointment -->
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
