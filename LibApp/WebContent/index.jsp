<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="login_admin.jsp">
		<fieldset>
			<input type="submit" value="login" class="sansLabel" />
		</fieldset>
	</form>
	<form method="post" action="CreationAuteur">
		<fieldset>
			<legend>search</legend>
			<input type="text" id="issnLivre" name="issnLivre" size="20"
				maxlength="20">
			</nput>
			<input type="submit" value="search" class="sansLabel"></input>
		</fieldset>
	</form>
</body>
</html>