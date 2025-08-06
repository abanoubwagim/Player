<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fifa Player</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>

	<table class="table table-dark" >
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">number</th>
      <th scope="col">address</th>
      <th scope="col">phone</th>
      <th scope="col">Services</th>
    </tr>
  </thead>
  <tbody>
  
    				     <!-- from model -->
      <c:forEach var="player" items="${players}">
      <tr>
	      	<td>${player.id}</td>
	      	<td>${player.name}</td>
	      	<td>${player.number}</td>
	      	<td>${player.address}</td>
	      	<td>${player.phone}</td>
	      	
	      	<c:url var="editPlayer" value="/fifa/showplayer">
	      		<c:param name="playerId" value="${player.id}"></c:param>
	      	</c:url>
	      	
	      	<td><a href="${editPlayer}" type="button" class="btn btn-primary" >Edit</a>
		      <button type="button" class="btn btn-danger">Delete</button>
		  </td>
	   </tr>
      </c:forEach>
      
      
      
    
    
  
  </tbody>
</table>


	<a href="add" type="button" class="btn btn-primary" >Add Player</a>
		
		

</body>
</html>