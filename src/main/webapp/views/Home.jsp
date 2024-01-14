<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<title>User Home</title>

<!--  Access the Static Resources without using spring URL -->
<link rel="stylesheet" href="/css/home.css">


</head>

<body>

    <%@ include file="nav_bar.jsp"%>


    <div class="container main">
    
    <div class="info">
    <h1>Welcome to used car sale portal</h1><br>
    <div class="b1">
    <a href="/login">
    <button class="btn btn-primary">Login</button></a><br>
    </div>
    </div>
    </div>

</body>
</html>