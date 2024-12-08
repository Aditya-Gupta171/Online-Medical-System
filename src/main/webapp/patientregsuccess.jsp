<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Patient Registration Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #f0f8ff, #cce7ff);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            text-align: center;
            background: #ffffff;
            padding: 40px 60px; /* Increased padding for larger card */
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            width: 400px; /* Increased width for larger card */
        }
        .message {
            font-size: 24px; /* Larger font size for the message */
            color: #0078d7; /* Subtle blue tone */
            margin-bottom: 30px; /* Increased spacing below the message */
        }
        .login-link {
            display: inline-block;
            padding: 12px 30px; /* Larger button size */
            font-size: 18px; /* Larger font size for the button */
            color: #ffffff;
            text-decoration: none;
            background: #0078d7;
            border-radius: 8px;
            transition: background 0.3s, transform 0.2s;
        }
        .login-link:hover {
            background: #0056a6;
            transform: translateY(-2px); /* Slight lift on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="message">
            <c:out value="${message}"></c:out>
        </div>
        <a href="patientlogin" class="login-link">Login Here</a>
    </div>
</body>
</html>
