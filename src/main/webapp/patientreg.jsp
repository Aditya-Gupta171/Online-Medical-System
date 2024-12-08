<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Patient Registration</title>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <h3 style="text-align: center;"> <u>Patient Registration Form</u></h3>

    <div class="form-container">
        <form method="post" action="insertpatient">
            <table>
                <tr>
                    <td><label for="pname">Enter Name</label></td>
                    <td><input type="text" id="pname" name="pname" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="pgender" value="Male" required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="pgender" value="Female" required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="pgender" value="Others" required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for=pdob">Select Date of Birth</label></td>
                    <td><input type="date" id="pdob" name="pdob" required/></td>
                </tr>
                <tr>
                    <td><label for="pemail">Enter Email</label></td>
                    <td><input type="email" id="pemail" name="pemail" required/></td>
                </tr>
                <tr>
                    <td><label for="ppwd">Enter Password</label></td>
                    <td><input type="password" id="ppwd" name="ppwd" required/></td>
                </tr>
              
                <tr>
                    <td><label for="pcontact">Enter Contact</label></td>
                    <td><input type="number" id="pcontact" name="pcontact" required/></td>
                </tr>
                
                <tr>
                    <td><label for="pmedicalhistory">Enter Medical History</label></td>
                    <td><input type="text" id="pmedicalhistory" name="pmedicalhistory" required/></td>
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
