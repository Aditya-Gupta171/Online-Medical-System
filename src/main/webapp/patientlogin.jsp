<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Patient Login</title>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    
    <h4 align="center" style="color:red">
    <c:out value="${message1}"></c:out><br/>
    <c:out value="${message2}"></c:out> 
    
    </h4>
    
    <h3 style="text-align: center;"><u>Patient Login</u></h3>

    <div class="form-container">
        <form method="post" action="checkpatientlogin">
            <table>
                <tr>
                    <td><label for="pemail">Enter Email</label></td>
                    <td><input type="email" id="pemail" name="pemail" required/></td>
                </tr>
                <tr>
                   
                <tr>
                    <td><label for="ppwd">Enter Password</label></td>
                    <td><input type=password id="ppwd" name="ppwd" required/></td>
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
