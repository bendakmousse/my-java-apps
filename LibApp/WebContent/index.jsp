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
	<form method="post" action="search">
		<fieldset>
			<legend>search</legend>
			<p>
				<input type="text" id="search" name="search" size="20"
					maxlength="20">
				</nput>
				<input type="hidden" id="whosearch" name="whosearch" value="visitor" >
				</nput>
				<select name="searchin" id="searchin">
					<option value="auteur">Auteur</option>
					<option value="livre">Livre</option>
					<option value="domaine">Domaine</option>
				</select>
			</p>
			<input type="submit" value="search" class="sansLabel"></input>
		</fieldset>
	</form>
</body>
</html>