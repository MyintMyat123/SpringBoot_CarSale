<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<title>User Management</title>



<!--  Access the Static Resources without using spring URL -->
<link href="/css/style.css" rel="stylesheet" />
<script src="/js/custom.js"></script>


</head>

<body>

	<%@ include file="nav_bar.jsp"%>


	<!-- First Container -->
	<div class="container-fluid bg-1">
		<div>
			<h2 class="text-center">User List</h2>

			<div class="row">

				<div class="col-md-12">

					<c:if test="${not empty userlists}">

						<table class="table table-striped table-bordered">

							<thead>
								<tr>
									<th>No.</th>
									<th>User Photo</th>
									<th>Full Name</th>
									<th>User Name</th>
									<th>Phone</th>
									<th>Address</th>
									<th>Password</th>
									<th>Actions</th>
								</tr>
							</thead>

							<tbody>

								<%
								int i = 1;
								%>
								<c:forEach var="user" items="${userlists}">

									<tr>
										<td><%=i%></td>
										<td>
											<c:choose>
												<c:when test="${empty user.userphoto}">
													<img src="images/user_icon.jpg" alt="User Profile"
														width="100" height="100">
												</c:when>
												<c:otherwise>
													<img src="/images/${user.userphoto}" width="100"
														height="100" alt="User Profile">
												</c:otherwise>
											</c:choose>
										</td>
										<td>${user.name}</td>
										<td>${user.userName}</td>
										<td>${user.phone}</td>
										<td>${user.address}</td>
										<td>${user.password}</td>

										<td><a href="/user_edit?id=${user.id}">
												<button class="btn btn-info">Edit</button>
										</a> <a href="/user_delete?id=${user.id}">
												<button class="btn btn-danger">Delete</button>
										</a></td>
									</tr>
									<%
									i++;
									%>
								</c:forEach>

							</tbody>
						</table>

					</c:if>

				</div>
			</div>

			<!--  End User Lists  -->

		</div>
	</div>

</body>
</html>