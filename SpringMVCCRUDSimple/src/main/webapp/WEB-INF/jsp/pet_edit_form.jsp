<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
 <%@ page import="java.sql.*, java.io.*"%> 

		<h1>Edit pet</h1>
		 
       <form:form method="PUT" action="/SpringMVCCRUDSimple/edit_save_pet">  
      	<table >  
      	<tr>
      	<td></td>  
         <td><form:hidden  path="id" id="sid" /></td>
         </tr> 
         <tr>  
          <td>Name : </td> 
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
          <td>DateBirth :</td>  
          <td><form:input path="dateBirth" name="sel" /></td>
         </tr> 
         <tr>  
          <td>Sex:</td>
				<td><form:radiobutton path="sex" value="M" />Mascul</td>
				<td><form:radiobutton path="sex" value="F" />Femela</td>
         </tr> 
         <tr>
      	<td></td>  
         <td><form:input path="shelterId" id="shelter" type="hidden" /></td>
         </tr> 
         <tr>  
          <td> </td>  
          <td><input type="submit" value="Edit Save" /></td>  
         </tr>  
        </table>  
       </form:form>  
       
       <script >
       function fun(){
       	console.log("test");
       	var e = document.getElementById("sel");
       	console.log(e.value);
       	document.getElementById("shelter").value = e.value;
       	var d = document.getElementById("shelter");
       	console.log(d.value);
       }
       </script>
      
       
       <a href="/SpringMVCCRUDSimple/index.jsp">HOME</a>
