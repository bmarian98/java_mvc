<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

		<h1>Edit pet</h1>
       <form:form method="POST" action="/SpringMVCCRUDSimple/edit_save_pet">  
      	<table >  
      	<tr>
      	<td></td>  
         <td><form:hidden  path="id" /></td>
         </tr> 
         <tr>  
          <td>Name : </td> 
          <td><form:input path="name"  /></td>
         </tr>  
         <tr>  
          <td>ShelterId :</td>  
          <td><form:input path="shelterId" /></td>
         </tr> 
         <tr>  
          <td>DateBirth :</td>  
          <td><form:input path="dateBirth" /></td>
         </tr> 
         <tr>  
          <td>Sex:</td>
				<td><form:radiobutton path="sex" value="M" />Mascul</td>
				<td><form:radiobutton path="sex" value="F" />Femela</td>
         </tr> 
         
         <tr>  
          <td> </td>  
          <td><input type="submit" value="Edit Save" /></td>  
         </tr>  
        </table>  
       </form:form>  
       <a href="/SpringMVCCRUDSimple/index.jsp">HOME</a>
