<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Custom Login Page</title>

<style>
.failed {
	color: red;
}
</style>
</head>
<body>
	<h2>My Custom Login Page</h2>
	<form:form
		action="${pageContext.request.contextPath}/authenticateTheUser"
		method="POST">

		<c:if test="${param.error!=null}">
			<i class="failed">Sorry! You entered invalid username/password.</i>
		</c:if>

		<p>
			<label>Username : </label> <input type="text" name="username" />
		</p>
		<p>
			<label>Password : </label> <input type="password" name="password" />
		</p>
		<input type="submit" value="Login" />
	</form:form>

</body>
</html>