<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<body><h1 align="center">Welcome to JAVA CENTER</h1>
<h2 align="center">This is EMPLOYEE PAGE</h2>
<h3>Welcome:
${pageContext.request.userPrincipal.name}|</h3>
<form action="logout" method="POST">
<input type="hidden"
name="${_csrf.parameterName}"
value="${_csrf.token}"/>

<input type="submit" value="LOGOUT">
</form>
</body>
</html>