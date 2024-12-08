<%@page import="com.klef.jfsd.springboot.model.doctor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<% doctor d = (doctor) session.getAttribute("d");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Doctor Profile</title>
</head>
<body>
    <%@include file="doctornavbar.jsp" %>
    <h3 style="text-align: center;"> Update Profile</u></h3>

    <div class="form-container">
        <form method="post" action="updatedoc">
            <table>
             <tr>
                    <td><label for="did">User Id</label></td>
                    <td><input type="number" id="did" name="did" value="<%=d.getId()%>" readonly required/></td>
                </tr>
                <tr>
                    <td><label for="dname">Enter Name</label></td>
                    <td><input type="text" id="dname" name="dname" value="<%=d.getName()%>" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
				   <td>
				    <input type="radio" id="male" name="dgender" value="Male" <%= d.getGender().equals("Male") ? "checked" : "" %> required/>
				    <label for="male">Male</label>
				    
				    <input type="radio" id="female" name="dgender" value="Female" <%= d.getGender().equals("Female") ? "checked" : "" %> required/>
				    <label for="female">Female</label>
				    
				    <input type="radio" id="others" name="dgender" value="Others" <%= d.getGender().equals("Others") ? "checked" : "" %> required/>
				    <label for="others">Others</label>
				</td>
                </tr>
                <tr>
                    <td><label for="ddob">Select Date of Birth</label></td>
                    <td><input type="date" id="ddob" name="ddob" value="<%=d.getDob()%>" required/></td>
                </tr>
                <tr>
                    <td><label for="demail">Enter Email</label></td>
                    <td><input type="email" id="demail" name="demail" value="<%=d.getEmail()%>" readonly required/></td>
                </tr>
                <tr>
                    <td><label for="dpwd">Enter Password</label></td>
                    <td><input type="password" id="dpwd" name="dpwd" value="<%=d.getPassword()%>" required/></td>
                </tr>
                <tr>
                    <td><label for="dsalary">Enter Salary</label></td>
                    <td><input type="number" id="dsalary" name="dsalary" value="<%=d.getSalary()%>" readonly required/></td>
                </tr>
                <tr>
                    <td><label for="dcontact">Enter Contact</label></td>
                    <td><input type="number" id="dcontact" name="dcontact" value="<%=d.getContact()%>" required/></td>
                </tr>
                <tr>
                    <td><label for="dqualification">Enter Qualification</label></td>
                    <td>
				        <select id="dqualification" name="dqualification" required>
				        <option value="" <%= d.getQualification().equals("") ? "selected" : "" %>>--Select Qualification--</option>
				        <option value="mbbs" <%= d.getQualification().equalsIgnoreCase("mbbs") ? "selected" : "" %>>MBBS</option>
				        <option value="md" <%= d.getQualification().equalsIgnoreCase("md") ? "selected" : "" %>>MD</option>
				        <option value="bds" <%= d.getQualification().equalsIgnoreCase("bds") ? "selected" : "" %>>BDS</option>
				        <option value="ms" <%= d.getQualification().equalsIgnoreCase("ms") ? "selected" : "" %>>MS</option>
				    </select>
                    </td>
                </tr>
                <tr>
                
   <tr>
    <td><label for="dspeciality">Enter Speciality</label></td>
    <td>
        <select id="dspeciality" name="dspeciality" required>
            <option value="" <%= d.getSpeciality().equals("") ? "selected" : "" %>>--Select Speciality--</option>
            <option value="cardiologist" <%= d.getSpeciality().equalsIgnoreCase("cardiologist") ? "selected" : "" %>>Cardiologist</option>
            <option value="neurologist" <%= d.getSpeciality().equalsIgnoreCase("neurologist") ? "selected" : "" %>>Neurologist</option>
            <option value="orthopedic" <%= d.getSpeciality().equalsIgnoreCase("orthopedic") ? "selected" : "" %>>Orthopedic</option>
            <option value="dentist" <%= d.getSpeciality().equalsIgnoreCase("dentist") ? "selected" : "" %>>Dentist</option>
        </select>
    </td>
</tr>
                
                    <td><label for="dexperience">Enter Experience Year</label></td>
                    <td><input type="number" id="dexperience" name="dexperience" value="<%=d.getExperience()%>" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Update"/>
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
