<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
<h1 align="center">Welcome to JAVA CENTER</h1>
<h2 align="center">
<c:if test="${param.error!=null}">
<font color="red">Invalid username and password</font>
</c:if>


<c:if test="${param.logout!=null}">
<font color="red">You have logged out successfully</font>
</c:if>
</h2>


<form name='loginForm' action="<c:url  value='/login'/>"method='POST'>
<table align='center'>
<tr><td align="center" colspan="2">
<h2>Login with Username and Password</h2></td>
</tr>

<tr><td>Username</td>
<td><input type='text' name='username' value=''></td>
</tr>
<tr><td>Password</td>
<td><input type='password' name='password'/></td>
</tr>

<tr>
<td align="center" colspan="2"><input type="hidden"
name="${_csrf.parameterName}"
value="${_csrf.token}"/><input type="submit" value="LOGIN"></td>
</tr>
</table>
</form>

<a href="index.jsp"><h2 align="center">Index Page</h2></a>

</body>
</html>