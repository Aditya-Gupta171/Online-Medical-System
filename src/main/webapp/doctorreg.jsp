<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Doctor Registration</title>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <h3 style="text-align: center;"> Doctor Registration Form</u></h3>

    <div class="form-container">
        <form method="post" action="insertdoctor">
            <table>
                <tr>
                    <td><label for="dname">Enter Name</label></td>
                    <td><input type="text" id="dname" name="dname" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="dgender" value="Male" required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="dgender" value="Female" required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="dgender" value="Others" required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="ddob">Select Date of Birth</label></td>
                    <td><input type="date" id="ddob" name="ddob" required/></td>
                </tr>
                <tr>
                    <td><label for="demail">Enter Email</label></td>
                    <td><input type="email" id="demail" name="demail" required/></td>
                </tr>
                <tr>
                    <td><label for="dpwd">Enter Password</label></td>
                    <td><input type="password" id="dpwd" name="dpwd" required/></td>
                </tr>
                <tr>
                    <td><label for="dsalary">Enter Salary</label></td>
                    <td><input type="number" id="dsalary" name="dsalary" required/></td>
                </tr>
                <tr>
                    <td><label for="dcontact">Enter Contact</label></td>
                    <td><input type="number" id="dcontact" name="dcontact" required/></td>
                </tr>
                <tr>
                    <td><label for="dqualification">Enter Qualification</label></td>
                    <td>
                        <select id="dqualification" name="dqualification" required>
                            <option value="">--Select Qualification--</option>
                            <option value="mbbs">MBBS</option>
                            <option value="md">MD</option>
                            <option value="bds">BDS</option>
                            <option value="ms">MS</option>
                        </select>
                    </td>
                </tr>
                
                <tr>
                    <td><label for="dspeciality">Enter Specialty</label></td>
                    <td>
                        <select id="dspeciality" name="dspeciality" required>
                            <option value="">--Select Speciality--</option>
                            <option value="cardiologist">Cardiologist</option>
                            <option value="neurologist">Neurologist</option>
                            <option value="orthopedic">Orthopedic</option>
                            <option value="dentist">Dentist</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="dexperience">Enter Experience Year</label></td>
                    <td><input type="number" id="dexperience" name="dexperience" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Register"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
    
     <!-- Footer Section -->
    <div class="footer">
        <p>&copy; 2024 TeleCure. All rights reserved.</p>
        <p>Connect with us on <a href="https://www.facebook.com/TeleCure">Facebook</a> | <a href="https://twitter.com/TeleCure">Twitter</a> | <a href="https://www.linkedin.com/company/TeleCure">LinkedIn</a></p>
    </div>
</body>
</html>
