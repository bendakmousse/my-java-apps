<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="login_style.css" />

<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>


	<div class="login">
		<h1>Admin Login</h1>
		<form method="post" action="login_admin">
			<input type="text" name="username" placeholder="Username"
				required="required" /> <input type="password" name="password"
				placeholder="Password" required="required" />
			<pr>${message}</pr>
			<button type="submit" class="btn btn-primary btn-block btn-large">Login</button>
		</form>
	</div>

	<form method="post" action="index.jsp">
		<fieldset>
			<input type="submit" value="accueil" class="sansLabel" />
		</fieldset>
	</form>

</body>
</html>