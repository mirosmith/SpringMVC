<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/files/main.css"
	rel="stylesheet" type="text/css" />
<title>HomePage</title>
</head>
<body>
<div id="wrapper"> 

	<div id="content"><h1>Submit your information</h1></div>
	<hr />
	<div id="content">
	
		<form:form action="hello" modelAttribute="info" method="post">
			<p>
				First Name :
				<form:input path="firstName" required="true"/>
			<p />
			<p>
				Last Name :
				<form:input path="lastName" />
			<p />
			<p>
				Gender :

				<form:radiobuttons path="gender" items="${radiomapa}" />
				<!--  
				<form:radiobutton path="gender" value="Muz"/> Male
				<form:radiobutton path="gender" value="Zena"/> Female
				-->
			</p>
			<p>
				Country:

				<form:select path="country" items="${selectmapa}" />

				<!--  
				<form:select path="country">
					<form:option value="Nemecko">Germany</form:option>
					<form:option value="Rakousko">Austria</form:option>
					<form:option value="Ceska republika">Czechia</form:option>
				</form:select>
				-->
			</p>
			<p>
				Visited Countries:
				<form:checkboxes items="${selectmapa}" path="visited" />
			</p>			
			
			<input type="submit" Value="Submit">
		</form:form>
	</div>
	<div id="footer">
		<p>
			toString: ${str} <br /> 
			contextPath: ${pageContext.request.contextPath} <br /> 
			requestURI: ${pageContext.request.requestURI}
		</p>
	</div>
</div>
</body>
</html>
