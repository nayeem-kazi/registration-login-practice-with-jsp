<%-- 
    Document   : reg
    Created on : Aug 28, 2022, 10:20:19 AM
    Author     : Student
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="ds" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/stdb" user="root" password="nclc123"/>
         <%
            int id =Integer.parseInt(request.getParameter("id"));
            String name=request.getParameter("name");
            String email =request.getParameter("email");
            String password = request.getParameter("password");
            
        %>
        <sql:update  var="user" dataSource="${ds}">
            INSERT into register VALUES(<%=id%>,'<%=name%>', '<%=email%>', <%=password%>);
        </sql:update>
         <%
            response.sendRedirect("login.jsp");
        %>
    </body>
</html>
