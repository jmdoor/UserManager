<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
	title = {text-align = center;}
	h1 = {text-align = center;}
	form = {text-align = center;}
</style>
<meta charset="ISO-8859-1">
<title>Update Record</title>
</head>
<body>
	<div class="form">
	<h3>Update a user by ID#</h3>
	<form action="update" method="post">
		
		<label for="id">User ID#:</label>
		<input type="number" id="id" name="id" required>
		<label for="name">Username:</label>
		<input type="text" id="name" name="name" required>
		<label for="email">Email:</label>
		<input type="email" id="email" name="email" required>
		<label for="password">Password:</label>
		<input type="password" id="password" name="password" required>
		<input type="submit" value="Submit">
	
	</form>
</div><br>
<div class="botnav">
	<a href="/">Home Page</a>
	<a href="/edit">Search for a User</a>
</div>
</body>
</html>