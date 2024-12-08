<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Doctor Login</title>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <h3 style="text-align: center;"><u>Doctor Login</u></h3>

    <div class="form-container">
        <form method="post" action="checkdoctorlogin">
            <table>
                <tr>
                    <td><label for="demail">Enter Email</label></td>
                    <td><input type="email" id="demail" name="demail" required/></td>
                </tr>
                <tr>
                   
                <tr>
                    <td><label for="dpassword">Enter Password</label></td>
                    <td><input type=password id="dpassword" name="dpassword" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login"/>
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
