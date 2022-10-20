<%-- 
    Document   : process
    Created on : Aug 28, 2022, 10:14:18 AM
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
        <c:if test="${empty param.name || empty param.password}">
            <c:redirect url="login.jsp">
                <c:param name="errmsg" value="User name or Email is Empty"></c:param>
            </c:redirect>
        </c:if>

        <c:if test="${not empty param.name || not empty param.password}">
            <sql:setDataSource var="ds" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/stdb" user="root" password="nclc123"></sql:setDataSource>
            <sql:query var="data" dataSource="${ds}">
                SELECT count(*) AS a FROM register WHERE name="${param.name}" and password="${param.password}"
            </sql:query>
            <c:forEach var="row" items="${data.rows}">
                <c:choose>
                    <c:when test="${row.a > 0}">
                        <c:set var="user" value="${param.name}" scope="session"></c:set>
                        <c:redirect url="success.jsp"></c:redirect>
                    </c:when>
                    <c:otherwise>
                        <c:redirect url="login.jsp">
                            <c:param name="errmsg" value="User name or Email is Wrong"></c:param>   
                        </c:redirect>

                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </c:if>
    </body>
</html>
