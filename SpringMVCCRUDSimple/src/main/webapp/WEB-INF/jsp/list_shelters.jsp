    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

	<h1>Shelters List</h1>
	<table border="2" width="70%" cellpadding="2">
	<tr><th>Name</th><th>Details</th><th>Edit</th></tr>
    <c:forEach var="shelter" items="${list}"> 
    <tr>
    <td>${shelter.name}</td>
    <td><a href="shelter_details/${shelter.id}">Details</a></td>
    <td><a href="edit_shelter/${shelter.id}">Edit</a></td>
    </tr>
    </c:forEach>
    </table>
    <br/>
    <a href="shelterform">Add New Shelter</a>