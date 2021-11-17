<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<h1>Shelter details</h1>
	<table  border="2" width="70%" cellpadding="2">
		<tr><th>Id</th><th>Name</th><th>Address</th></tr>
	   	<tr>
		    <td><c:out value="${command.id}" /></td>
		    <td><c:out value="${command.name}" /></td>
		    <td><c:out value="${command.address}" /></td>  
	      </tr>  
     </table>  
     <a href="/SpringMVCCRUDSimple/index.jsp">HOME</a>