<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">

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

<link rel="stylesheet" href="/css/nav_bar.css">
</head>
<body>


	<!-- Navbar -->
	<nav class="navbar navbar-inverse">
		<div class="container c1">

			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand"> <img src="/images/used-car-logo.png"
					width="120px" />
				</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-left">

					<sec:authorize access="!isAuthenticated()">
						<li><a class="link" href="/home">Home</a></li>
						<li><a class="link" href="/aboutUs">About us</a></li>
						<li><a class="link" href="/contactUs">Contact us</a></li>
					</sec:authorize>


					<sec:authorize access="isAuthenticated()">

						<sec:authorize access="hasRole('Users')">
							<li><a class="link" href="/home">Home</a></li>
							<li><a class="link" href="/view_cars">Used Cars</a></li>
							<li><a class="link" href="/post_car">Sell Car</a></li>
							<li><a class="link" href="/aboutUs">About us</a></li>
							<li><a class="link" href="/contactUs">Contact us</a></li>
						</sec:authorize>

						<sec:authorize access="hasRole('Administrator')">
							<li><a class="link" href="/home">Home</a></li>
							<li><a class="link" href="/view_cars">Car Management </a></li>
							<li><a class="link" href="users">User Management</a></li>
							<li><a class="link" href="/aboutUs">About us</a></li>
							<li><a class="link" href="/contactUs">Contact us</a></li>

						</sec:authorize>

					</sec:authorize>
				</ul>

				<ul class="nav navbar-nav navbar-right">

					<sec:authorize access="!isAuthenticated()">
						<li><a class="link" href="/login">Login</a></li>
						<li><a class="link" href="/register_form">Register</a></li>
					</sec:authorize>

					<sec:authorize access="isAuthenticated()">

						<c:if test="${not empty user}">
							<li class="profile"><a href="/profile?id=${user.id}"> 
									<c:choose>
										<c:when test="${empty user.userphoto}">
											<img src="images/user_icon.jpg" alt="User Profile">
										</c:when>
										<c:otherwise>
											<img src="/images/${user.userphoto}" alt="User Profile">
										</c:otherwise>
									</c:choose>
									${user.userName}
							</a></li>
						</c:if>



					</sec:authorize>




				</ul>
			</div>

		</div>
	</nav>


</body>
</html>


