<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello</title>

</head>

<body>
<h2> Informace o tobe </h2>
<p>
Jmeno: ${firstName}
</p>
<p>
Prijmeni: ${lastName}
</p>
<p>
Pohlavi: ${gender}
</p>
<p>
Zeme: ${country}
</p>
<p>
Navstivene zeme:

<ul>

<c:forEach var="element" items="${visitedCountry}">
	<li> ${element} </li>
</c:forEach>
</ul>



<!--
<ul>
<c:forEach var="element" items="${seznam}">
	<li>${element}</li>
</c:forEach>
</ul>
--> 

</body>
</html>