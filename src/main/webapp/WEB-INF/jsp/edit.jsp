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
	<h2>Edit details for:  </h2>

	<form action="/edit" method = "Get">
		<label for="id">Enter ID:</label><input type="text" name="id" /><br>
		<label for="name">Enter Name:</label><input type="text" name="name" /><br>
		<label for="email">Enter Email:</label><input type="text" name="email" /><br>
		<label for="password">Enter Password:</label><input type="text"
			name="password" /><br>
		 <input type="submit" value="submit" />

	</form>
	

</body>
</html>