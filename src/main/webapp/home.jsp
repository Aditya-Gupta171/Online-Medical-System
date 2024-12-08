<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Online Medical Appointment System</title>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>

    <div class="main-content">
        <div class="welcome-section">
            <h1>Welcome to <span class="brand-name">TeleCure</span></h1>
            <h3>Your Trusted Virtual Health Companion</h3>
            <p>TeleCure provides you with easy access to healthcare from the comfort of your home. Connect with experienced doctors, schedule appointments, and manage your health records – all in one place.</p>
        </div>

        <div class="features-section">
            <h2>Why Choose TeleCure?</h2>
            <div class="features">
                <div class="feature">
                    <h4>🩺 Easy Appointments</h4>
                    <p>Book appointments with your preferred healthcare providers quickly and conveniently.</p>
                </div>
                <div class="feature">
                    <h4>📋 Manage Health Records</h4>
                    <p>Keep track of your medical history, prescriptions, and test results securely.</p>
                </div>
                <div class="feature">
                    <h4>💬 Virtual Consultations</h4>
                    <p>Consult with doctors from anywhere, ensuring timely and effective healthcare.</p>
                </div>
            </div>
        </div>

        <div class="get-started-section">
            <h2>Get Started with TeleCure</h2>
            <p>Whether you're a new or returning patient, setting up your account is easy.</p>
            <a href="patientreg.jsp" class="btn">Register as a New Patient</a>
            <a href="patientlogin.jsp" class="btn">Log In to Your Account</a>
        </div>
    </div>

    <!-- Footer Section -->
    <div class="footer">
        <p>&copy; 2024 TeleCure. All rights reserved.</p>
        <p>Connect with us on <a href="https://www.facebook.com/TeleCure">Facebook</a> | <a href="https://twitter.com/TeleCure">Twitter</a> | <a href="https://www.linkedin.com/company/TeleCure">LinkedIn</a></p>
    </div>
</body>
</html>
