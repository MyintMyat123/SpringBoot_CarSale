<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page isELIgnored="false"%>

<html>

<head>
<title>Register</title>

<!-- Access the Static Resources  using spring Url  -->
<!--
<spring:url value="/css/style.css" var="myCss" />
<spring:url value="/js/custom.js" var="myJS" />

<link href="${myCss}" rel="stylesheet" />
<script src="${myJS}"></script>
-->
<link rel="stylesheet" href="/css/sign_up.css">


</head>

<body class="bg">

		<%@ include file="nav_bar.jsp"%>


<div class="row">

  <div class="col-sm-4"></div>
  <div class="col-sm-4"></div>
  <div class="col-sm-4">
  
  			<div class="container1">

				<c:if test="${register_success != null}">
					<div class="alert alert-success">
						<p>${register_success}
							Click <a href="login"> Sign In</a> to use our portal...
						</p>
					</div>
				</c:if>
				<div style="margin-left: 10px;">
				<h1>Sign Up</h1>
				<p>Please fill in this form to create an account.</p>
				<form:form action="register_process" method="post" modelAttribute="user">
				
					<label for="name"><b>Enter your full name</b></label> 
					<form:input path="name" placeholder="Enter your full name" required="true" /> 
				
					<label for="userName"><b>Username</b></label> 
					<form:input path="userName" placeholder="Enter Username" required="true" /> 

					<label for="Phone"><b>Phone</b></label> 
					<form:input path="phone" placeholder="Enter Phone number" required="true" />

					<label for="address"><b>Address</b></label> 
					<form:input path="address" placeholder="Enter Address" required="true" />
					
					<label for="psw"><b>Password</b></label> 
					<form:input path="password" placeholder="Enter your password" required="true" />
					

					<p>
						By creating an account you agree to our <a href="#"
							style="color: dodgerblue">Terms & Privacy</a>.
					</p>

					<div>

 						<button  type="submit" value="Register">Register</button> 
					</div>
				</form:form>
				</div>
			</div>
  
  </div>
</div>







</body>
</html>
