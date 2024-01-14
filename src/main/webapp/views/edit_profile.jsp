<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<title>Edit Profile</title>
<!--  Enable Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>

<body>
    <%@ include file="nav_bar.jsp"%>
	<div class="container">



		<h2>Edit User Page</h2>
		<form:form action="update_profile" method="post" modelAttribute="user" enctype="multipart/form-data">


			<input type="hidden" value="${_csrf.token}" />
				<form:hidden path="id" />
				
			<c:choose>
				<c:when test="${empty user.userphoto}">
					<img src="images/user_icon.jpg" alt="User Profile"  width="300px">
				</c:when>
				<c:otherwise>
					<img src="/images/${user.userphoto}" alt="User Profile" width="300px">
					<form:hidden path="userphoto" />
				</c:otherwise>
			</c:choose>

			<div class="form-group">
				<label for="userphoto">Upload User Photo:</label> 
				<input type="file" name="file" />
			</div>			

			<div class="form-group">
				<label for="name">Name</label>
				<form:input path="name" class="form-control" required="true" />
			</div>


			<div class="form-group">
				<label for="User name">User Name</label>
				<form:input path="userName" class="form-control" required="true" />
			</div>

			<div class="form-group">
				<label for="phone">Phone</label>
				<form:input path="phone" class="form-control" required="true" />
			</div>
			
			<div class="form-group">
				<label for="address">Password</label>
				<form:input path="address" class="form-control" required="true" />
			</div>
			
			<div class="form-group">
				<label for="Password">Password</label>
				<form:input path="password" class="form-control" required="true" />
			</div>


			<input type="submit" value="save_user" class="btn btn-primary" />

		</form:form>


	</div>

</body>
</html>