<%-- 
    Document   : RegisterPage
    Created on : Aug 28, 2022, 10:08:49 AM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="reg.jsp">
            <table>
                <tr>
                    <td><b>ID:</b></td>
                    <td><input type="text" name="id"</td>
                </tr>
                
                 <tr>
                    <td><b>Name:</b></td>
                    <td><input type="text" name="name"</td>
                </tr>
                
                 <tr>
                    <td><b>E-mail:</b></td>
                    <td><input type="text" name="email"</td>
                </tr>
                
                 <tr>
                    <td><b>Password:</b></td>
                    <td><input type="text" name="password"</td>
                </tr>
                <tr>
                  
                    <td><input type="submit"  value="Register"</td>
                </tr>
            </table>
        </form>
    </body>
</html>
