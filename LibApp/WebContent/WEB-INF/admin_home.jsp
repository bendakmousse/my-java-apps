<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Creation Auteur</title>
<link type="text/css" rel="stylesheet" href="form.css" />
</head>
<body>
	<div id="menu">
		<div style="text-align: right">
			<b>${admin.fullname} </b> <br> <br> <a href="/logout_admin">Logout</a>
		</div>

		<p>
			<a href="<c:url value="/CreationAuteur"/>">ajouter un nouveau
				auteur </a>
		</p>
		<p>
			<a href="<c:url value="/CreationLivre"/>">ajouter un nouveau
				livre </a>
		</p>
	</div>

	</form>
	<form method="post" action="search">
		<fieldset>
			<legend>search</legend>
			<p>
				<input type="text" id="search" name="search" size="20"
					maxlength="20">
				</nput>
				<select name="searchin" id="searchin">
					<option value="auteur">Auteur</option>
					<option value="livre">Livre</option>
					<option value="domaine">Domaine</option>
				</select>
			</p>
			<input type="submit" value="search" class="sansLabel"></input>
		</fieldset>
		<input type="hidden" id="whosearch" name="whosearch" value="admin">
		</nput>
	</form>

</body>
</html>