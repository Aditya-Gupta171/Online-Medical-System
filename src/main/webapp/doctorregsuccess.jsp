<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Doctor Registration Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f3f4f7;
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
            padding: 20px 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .message {
            font-size: 20px;
            color: #4caf50;
            margin-bottom: 20px;
        }
        .login-link {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            color: #ffffff;
            text-decoration: none;
            background: #4caf50;
            border-radius: 5px;
            transition: background 0.3s;
        }
        .login-link:hover {
            background: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="message">
            <c:out value="${message}"></c:out>
        </div>
        <a href="doctorlogin" class="login-link">Login Here</a>
    </div>
</body>
</html>
