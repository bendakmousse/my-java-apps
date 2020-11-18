
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>resultat</title>
</head>
<body>
	<h3>résultat de la recherche</h3>

	<c:choose>
		<c:when test="${requestScope.search_in.equals('livre')}">
			<table border="1">
				<th>ISSIN livre</th>
				<th>title de Livre</th>
				<th>nomber de pages de livre</th>
				<th>domaine de livre</th>
				<c:forEach items="${requestScope.list}" var="livre">
					<tr>
						<td>${livre.issn}</td>
						<td>${livre.titre}</td>
						<td>${livre.nbPages}</td>
						<td>${livre.domaine}</td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
		<c:when test="${requestScope.search_in.equals('domaine')}">
			<table border="1">
				<th>domaine de livre</th>
				<th>ISSIN livre</th>
				<th>title de Livre</th>
				<th>nomber de pages de livre</th>
				<c:forEach items="${requestScope.list}" var="livre">
					<tr>
						<td>${livre.domaine}</td>
						<td>${livre.issn}</td>
						<td>${livre.titre}</td>
						<td>${livre.nbPages}</td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
		<c:when test="${requestScope.search_in.equals('auteur')}">
			<table border="1">
				<th>num de auteur</th>
				<th>nom de auteur</th>
				<th>prenom de auteur</th>
				<th>date de naissance de auteur</th>
				<c:forEach items="${requestScope.list}" var="auteur">
					<tr>
						<td>${auteur.num}</td>
						<td>${auteur.nom}</td>
						<td>${auteur.prenom}</td>
						<td>${auteur.dateNaissance}</td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
		<c:otherwise>
			<p>pas de résultat ...</p>
		</c:otherwise>
	</c:choose>


	<c:choose>
		<c:when test="${requestScope.who_search.equals('visitor')}">
			<form method="post" action="index.jsp">
				<fieldset>
					<input type="submit" value="accueil" class="sansLabel" />
				</fieldset>
			</form>
		</c:when>
		<c:when test="${requestScope.who_search.equals('admin')}">
			<form method="post" action="homeAdmin">
				<fieldset>
					<input type="submit" value="accueil" class="sansLabel" />
				</fieldset>
			</form>
		</c:when>
	</c:choose>


</body>
</html>