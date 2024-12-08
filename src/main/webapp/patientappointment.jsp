<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Appointments</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
   <%@include file="patientnavbar.jsp" %>

    <div class="container">
        <h1 align ="center">My Appointments</h1>
        <table class="appointments-table">
            <thead>
                <tr>
                    <th>Appointment ID</th>
                    <th>Doctor's Name</th>
                    <th>Date</th>
                    <th>Time</th>
                    <th>Specialization</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <!-- Static data for demonstration -->
                <tr>
                    <td>101</td>
                    <td>Dr. Ramesh Gupta</td>
                    <td>2024-11-20</td>
                    <td>10:30 AM</td>
                    <td>Cardiologist</td>
                    <td>Confirmed</td>
                </tr>
                <tr>
                    <td>102</td>
                    <td>Dr. Anjali Mehra</td>
                    <td>2024-11-22</td>
                    <td>02:00 PM</td>
                    <td>Dermatologist</td>
                    <td>Pending</td>
                </tr>
                <tr>
                    <td>103</td>
                    <td>Dr. Vivek Sharma</td>
                    <td>2024-11-25</td>
                    <td>11:00 AM</td>
                    <td>Orthopedic</td>
                    <td>Cancelled</td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
