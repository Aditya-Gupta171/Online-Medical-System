<%@ page import="com.klef.jfsd.springboot.model.patient" %>
<%@ page import="com.klef.jfsd.springboot.model.doctor" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    patient patient = (patient) session.getAttribute("p");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Appointment</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
        }
        .container {
            max-width: 600px;
            margin-top: 50px;
            padding: 30px;
            background-color: #ffffff;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #007bff;
        }
        .btn-primary {
            width: 100%;
            background-color: #007bff;
            border: none;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .form-group label {
            font-weight: bold;
        }
        .error-message {
            color: red;
            text-align: center;
            margin-top: 15px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Book an Appointment</h2>
        <form action="/bookAppointment" method="post">
            
			
			<!-- Patient ID (Readonly) -->
            <div class="form-group">
                <label for="patientId">Patient ID</label>
                <input type="number" class="form-control" id="patientId" name="patientId" value="<%= patient.getId() %>" readonly>
            </div>
            
            <!-- Select Doctor -->
            <div class="form-group">
                <label for="doctorSelect">Select Doctor</label>
                <select class="form-control" id="doctorSelect" name="doctorId" required>
                    <option value="">-- Select Doctor --</option>
                    <c:forEach var="doctor" items="${doctors}">
					    <option value="${doctor.id}" data-name="${doctor.name}" data-speciality="${doctor.speciality}">
					        ${doctor.name} - ${doctor.speciality}
					    </option>	
					</c:forEach>
                </select>
            </div>
			
            
            
            <!-- Doctor Name (Readonly) -->
            <div class="form-group">
                <label for="doctorName">Doctor Name</label>
                <input type="text" class="form-control" id="doctorName" name="doctorName" readonly>
            </div>
            

            <!-- Department (Readonly) -->
            <div class="form-group">
                <label for="department">Department</label>
                <input type="text" class="form-control" id="department" name="department" readonly>
            </div>
            
             <!-- Doctor Id (Readonly) -->
			<div class="form-group">
			    <label for="doctorId">Doctor Id</label>
			    <input type="number" class="form-control" id="doctorId" name="doctorId" readonly>
			</div>        
			
			<!-- Appointment Date -->
            <div class="form-group">
                <label for="appointmentDate">Appointment Date</label>
                <input type="date" class="form-control" id="appointmentDate" name="appointmentDate" required>
            </div>
            
            <!-- Appointment Time -->
            <div class="form-group">
                <label for="appointmentTime">Appointment Time</label>
                <input type="time" class="form-control" id="appointmentTime" name="appointmentTime" required>
            </div>
            
            <!-- Purpose -->
            <div class="form-group">
                <label for="purpose">Purpose</label>
                <input type="text" class="form-control" id="purpose" name="purpose" required>
            </div>

            <!-- Submit Button -->
            <button type="submit" class="btn btn-primary">Book Appointment</button>
        </form>

        <!-- Display error message if booking fails -->
        <c:if test="${not empty error}">
            <div class="error-message">${error}</div>
        </c:if>
    </div>

    <!-- JavaScript for Dynamic Updates -->
    <script>
    document.getElementById('doctorSelect').addEventListener('change', function () {
        const selectedOption = this.options[this.selectedIndex];
        document.getElementById('doctorName').value = selectedOption.dataset.name || '';
        document.getElementById('doctorId').value = selectedOption.value || ''; // Ensure it uses value
        document.getElementById('department').value = selectedOption.dataset.speciality || '';
    });


    </script>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.4.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
