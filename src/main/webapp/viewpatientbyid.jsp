<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Pateint By Id</title>
</head>
<body>
    <%@include file="adminnavbar.jsp" %>
    <h3 style="text-align: center;"><u>View Patient By Id</u></h3>

    <div class="form-container">
        <form method="post" action="displaypatient">
            <table>
                <tr>
                    <td><label>Select Patient Id</label></td>
                    <td>
                    <select class="form-select" name="id" required>
                    <option value="">---Select---</option>
                    <c:forEach items="${patientslist}" var="patient">
                    <option value="${patient.id}">${patient.id} - ${patient.name}</option>
                    </c:forEach>
                    </select>
                    </td>
                    
                </tr>
                
                <tr>                  
                
                    <td colspan="2" class="button-container">
                        <input type="submit" value="view"/>
                        
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
