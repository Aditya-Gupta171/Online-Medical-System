<!DOCTYPE html>
<html>
<head>
    <title>About Us</title>
    <link rel="stylesheet" type="text/css" href="style.css"> <!-- Link to your CSS file -->
    <style>
        /* Additional CSS for centering and enhancing the page */
        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            margin: 0;
            background-color: #f9f9f9; /* Light background for better visibility */
        }

        section {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 90%; /* Responsive width */
        }

        h1, h2 {
            text-align: center;
            color: #4CAF50;
        }

        ul {
            padding: 0;
            list-style-type: none;
        }

        ul li {
            margin: 10px 0;
        }

        form label {
            font-weight: bold;
        }

        form input, form textarea, form button {
            display: block;
            width: 100%;
            margin: 10px 0;
            padding: 10px;
            font-size: 16px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }

        form button {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        form button:hover {
            background-color: #45a049;
        }

        footer {
            margin-top: 20px;
            text-align: center;
            color: #666;
        }
    </style>
</head>
<body>
<%@include file="mainnavbar.jsp" %>
    <header>
        <h1>About Us</h1>
    </header>
    <section>
        <p>Welcome to our Online Medical System for Virtual Consultations. We aim to provide accessible and quality healthcare services to patients from the comfort of their homes.</p>
        <h2>Our Mission</h2>
        <p>To bridge the gap between patients and healthcare providers through a secure and efficient online platform.</p>
        <h2>Our Vision</h2>
        <p>Empowering individuals by making healthcare services easily accessible and technology-driven.</p>
        <h2>Our Team</h2>
        <ul>
            <li>Doctors with expertise in various fields</li>
            <li>Support staff to assist you 24/7</li>
            <li>Technical team ensuring smooth operations</li>
        </ul>
    </section>
    <footer>
        <p>&copy; 2024 Online Medical System</p>
    </footer>
</body>
</html>
