<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<style>
table, th, td {
	border: 1px solid black;
}
</style>
</head>
<body>
	<h2>Edit Complete.</h2>

	<br> User updated. </br>
	
	<table style="text-align:center;margin-left:auto;margin-right:auto">
					<tr><th>ID</th><th>Name</th><th>Email</th><th>Password</th></tr>
						<c:forEach items="${user}" var="user" varStatus="count">
							<tr id="${count.index}">
								<td>${user.id}</td>
								<td>${user.name}</td>
								<td>${user.email}</td>
								<td>${user.password}</td>
							</tr>
					</c:forEach>
				</table>
	
	
	<a href = "/">Go back to Main</a><br>


</body>
</html>

