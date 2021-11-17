    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

	<h1>Pets List</h1>
	<table  border="2" width="70%" cellpadding="2">
	<tr><th>Pet Id</th><th>Details</th><th>Edit</th></tr>
    <c:forEach var="pet" items="${list}"> 
    <tr>
    <td>${pet.name}</td>
    <td><a href="pet_details/${pet.id}">Details</a></td>
    <td><a href="edit_tmp_pet/${pet.id}">Edit</a></td>
    </tr>
    </c:forEach>
    </table>
    <br/>
    <a href="petform">Add New Pet</a>
    <a href="/SpringMVCCRUDSimple/index.jsp">HOME</a>