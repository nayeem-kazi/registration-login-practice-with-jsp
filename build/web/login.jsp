<%-- 
    Document   : login
    Created on : Aug 28, 2022, 10:23:57 AM
    Author     : Student
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <h1>Login Page</h1>
        <form action="process.jsp">
            <table>
                <tr>
                    <td><b>User Name:</b></td>
                    <td><input type="text" name="name"</td>
                </tr>

                <tr>
                    <td><b>Password:</b></td>
                    <td><input type="text" name="password"</td>
                </tr> 

                <tr>
                    <td></td>
                    <td><input type="submit"  value="Login"</td>
                </tr>
            </table>
        </form>
        <c:if test="${not empty param.errmsg}" >
            <h3> <c:out value="${param.errmsg}">
                
                </c:out></h3>
        </c:if>
        
    </body>
</html>
