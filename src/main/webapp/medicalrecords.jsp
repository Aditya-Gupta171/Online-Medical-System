<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Medical Record</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            margin: 0;
            padding: 20px;
        }

        .container {
            max-width: 900px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        h2 {
            text-align: center;
            color: #4CAF50;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: center;
        }

        th {
            background-color: #4CAF50;
            color: white;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .record-header {
            font-size: 1.2em;
            margin-bottom: 10px;
            font-weight: bold;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            margin-top: 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            text-align: center;
        }

        .button:hover {
            background-color: #45a049;
        }

    </style>
</head>
<body>
<%@include file="doctornavbar.jsp" %></br></br>
    <div class="container">
        <h2>Patient Medical Records</h2>

        <div class="record-header">Patient Information</div>
        <table>
            <tr>
                <th>Patient ID</th>
                <th>Patient Name</th>
                <th>Age</th>
                <th>Gender</th>
            </tr>
            <tr>
                <td>001</td>
                <td>John Doe</td>
                <td>30</td>
                <td>Male</td>
            </tr>
        </table>

        <div class="record-header" style="margin-top: 30px;">Medical History</div>
        <table>
            <tr>
                <th>Date</th>
                <th>Diagnosis</th>
                <th>Treatment</th>
                <th>Prescribed Medication</th>
            </tr>
            <tr>
                <td>2024-01-15</td>
                <td>Flu</td>
                <td>Bed Rest</td>
                <td>Paracetamol</td>
            </tr>
            <tr>
                <td>2024-03-10</td>
                <td>Allergy</td>
                <td>Antihistamine</td>
                <td>Cetirizine</td>
            </tr>
        </table>

        <a href="index.jsp" class="button">Back to Home</a>
    </div>
</body>
</html>
