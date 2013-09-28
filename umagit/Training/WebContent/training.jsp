<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Hello ! I first modified in ur repo !!<br/>
<c:out value="Hello from c:out"/><br/>
<c:set var="personSalary" value="${100*300}"/>
Salary of the person is <c:out value="${personSalary}"/><br/>
Salary of the person is ${personSalary}<br/>
<c:if test="${personSalary < 40000 }" var="ifOutput">
You are not eligible in this program
</c:if>
<br/>
Condition is evaluating to ${ifOutput}<br/>

Using forEach<br/>
<c:forEach var="i" begin="1" end="5">
   Item <c:out value="${i}"/><br/>
</c:forEach>

<%
List<String> menuLinks = new ArrayList<String>();
menuLinks.add("Home");
menuLinks.add("Profile");
menuLinks.add("Settings");
menuLinks.add("Timesheet");
menuLinks.add("Approvals");
menuLinks.add("Pending");
menuLinks.add("Access");
session.setAttribute("menu_data", menuLinks);
%>

Using forEach with collection<br/>
<c:forEach var="currentStr" items="${menu_data}">
	<div><a href="${fn:toLowerCase(currentStr)}.html">${currentStr}</a></div>
</c:forEach>

</body>
</html>