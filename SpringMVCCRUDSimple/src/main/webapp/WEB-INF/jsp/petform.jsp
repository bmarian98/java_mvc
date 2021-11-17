<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add new Pet</title>
</head>
<body>
	<h1>Add pet</h1>
	
	<form:form method="post" action="save_pet">
		<table>
			<tr>
				<td>Id:</td>
				<td><form:input path="id" /></td>
			</tr>
			<tr>
				<td>Name:</td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td>ShelterId:</td>
				<td><form:input path="shelterId" /></td>
			</tr>
			<tr>
				<td>DateBirth:</td>
				<td><form:input path="dateBirth" /></td>
			</tr>
			<tr>
				<td>PetSex:</td>
				<td><form:radiobutton path="sex" value="M" />Mascul</td>
				<td><form:radiobutton path="sex" value="F" />Femela</td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Save" /></td>
			</tr>
		</table>
	</form:form>
<a href="/SpringMVCCRUDSimple/index.jsp">HOME</a>
</body>
</html>