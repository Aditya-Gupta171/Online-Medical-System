<!DOCTYPE html>
<html>
<head>
    <title>Contact Us</title>
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
    <section>
        <header>
            <h1>Contact Us</h1>
        </header>
        <p>We are here to help you with your queries and concerns. Feel free to reach out to us using the information below:</p>
        <h2>Contact Information</h2>
        <ul>
            <li>Email: support@telecure.com</li>
            <li>Phone: +91-9876543210</li>
            <li>Address: 123, Healthcare Lane, Hyderabad, India</li>
        </ul>
        <h2>Feedback Form</h2>
        <form action="submitFeedback" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="message">Message:</label>
            <textarea id="message" name="message" rows="5" required></textarea>

            <button type="submit">Submit</button>
        </form>
    </section>
    <footer>
        <p>&copy; 2024 Online Medical System</p>
    </footer>
</body>
</html>
