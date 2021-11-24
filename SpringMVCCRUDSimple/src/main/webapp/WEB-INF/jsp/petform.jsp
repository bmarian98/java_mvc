<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ page import="java.sql.*, java.io.*"%> 
    
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
				<td>Name:</td>
				<td><form:input path="name" /></td>
			</tr>
			         <tr>
          <td>Shelter :</td>  
          <td>
          <select id="sel" onchange="fun()">
			<%
			
			try
			{
				String query = "SELECT * FROM shelter";
	        	  
	        	  Class.forName("com.mysql.jdbc.Driver");
	        	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mvc?useSSL=false", "root", "new123");
	        	  Statement st = con.createStatement();
	        	  
	        	  ResultSet rs = st.executeQuery(query);
	        	  
	        	  %> 
	        	  <option selected="selected" value="-">------</option> 
	        	  <%
	        			  
	        	  while(rs.next())
	        	  {
	        		  %>
	        		  	<option value="<%=rs.getInt(1)%>"><%=rs.getString(2) %></option>
	        		  <%
	        	  }
	        	  
			}
			catch(Exception e)
			{
				
			}
			
			%>
          </select>
          </td>
         </tr> 
			<tr>
				<td><form:input path="shelterId" id="sid" type="hidden" /></td>
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
	 <script >
       function fun(){
       	console.log("test");
       	var e = document.getElementById("sel");
       	console.log(e.value);
       	document.getElementById("sid").value = e.value;
       	var d = document.getElementById("sid");
       	console.log(d.value);
       }
       </script>
	
<a href="/SpringMVCCRUDSimple/index.jsp">HOME</a>
</body>
</html>