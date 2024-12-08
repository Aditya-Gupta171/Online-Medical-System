<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Appointments (Doctor)</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <%@include file="doctornavbar.jsp" %>

    <div class="container">
        <h1 align="center">My Appointments</h1>
        <table class="appointments-table">
            <thead>
                <tr>
                    <th>Appointment ID</th>
                    <th>Patient Name</th>
                    <th>Date</th>
                    <th>Time</th>
                    <th>Reason</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <!-- Static data for demonstration -->
                <tr>
                    <td>201</td>
                    <td>Arun Kumar</td>
                    <td>2024-11-20</td>
                    <td>10:00 AM</td>
                    <td>Regular Checkup</td>
                    <td>Scheduled</td>
                </tr>
                <tr>
                    <td>202</td>
                    <td>Sneha Verma</td>
                    <td>2024-11-21</td>
                    <td>01:30 PM</td>
                    <td>Skin Allergy</td>
                    <td>Completed</td>
                </tr>
                <tr>
                    <td>203</td>
                    <td>Vikram Singh</td>
                    <td>2024-11-22</td>
                    <td>03:00 PM</td>
                    <td>Back Pain</td>
                    <td>Cancelled</td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
