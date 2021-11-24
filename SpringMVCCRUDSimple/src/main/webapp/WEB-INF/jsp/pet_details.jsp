<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<h1>Pet details</h1>
	<table border="2" width="70%" cellpadding="2">
		<tr><th>Id</th><th>Name</th><th>Shelter</th><th>Date birth</th><th>Sex</th></tr>
	   	<tr>
		    <td><c:out value="${command.id}" /></td>
		    <td><c:out value="${command.name}" /></td>
		    
		    <td><c:out value="${command.shelter}" /></td>
		    
		    <td><c:out value="${command.dateBirth}" /></td>
		    <td><c:out value="${command.sex}" /></td>
	      </tr>  
     </table>  
     <a href="/SpringMVCCRUDSimple/index.jsp">HOME</a>