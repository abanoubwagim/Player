<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="fo" uri="http://www.springframework.org/tags/form" %>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mystyle.css">
</head>
<body>
	
	<fo:form action="saveplayer" modelAttribute="player">
	  <div class="form-row">
	  
	  
	    <input type="hidden" name="id" value="${player.id}" />
	    
	    <div class="form-group col-md-6">
	      <label for="inputEmail4">Name</label>
	      <fo:input path="name" type="text" class="form-control" placeholder="Name"/>
	    </div>
	    
	    
	    <div class="form-group col-md-6">
	      <label for="inputPassword4">Number</label>
	      <fo:input path="number" type="number" class="form-control" placeholder="Number"/>
	    </div>
	  </div>
	  
	  
	  <div class="form-group">
	    <label for="inputAddress">Address</label>
	    <fo:input path="address" type="text" class="form-control" id="inputAddress" placeholder="Address"/>
	  </div>
	  
	   <div class="form-group">
	    <label for="inputAddress">Phone</label>
	    <fo:input path="phone" type="text" class="form-control" id="inputAddress" placeholder="Phone Number"/>
	  </div>
	 
	  
	  <button type="submit" class="btn btn-primary">Done</button>

	
	
	</fo:form>

</body>
</html>