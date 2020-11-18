<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Creation Livre</title>
<link type="text/css" rel="stylesheet" href="form.css" />
</head>
<body>
	<form method="post" action="CreationLivre">
		<fieldset>
			<legend>Creation</legend>
			<p>ajouter un livre via ce formulaire.</p>

   
			<label for="issnLivre">ISSN de livre</label> <input type="text"
				id="issnLivre" name="issnLivre"
				value="<c:out value="${livre.issn}"/>" size="20" maxlength="20" />
			<span class="erreur">${form.getErreurs().get("issnLivre")}</span> <br /> <label
				for="idAutereLivre">id d'auteur de livre </label> <input type="text"
				id="idAutereLivre" name="idAutereLivre"
				value="<c:out value="${livre.ID_auteur}"/>" size="20" maxlength="20" />
			<span class="erreur">${form.getErreurs().get("idAutereLivre")}</span> <br /> <label
				for="titreLivre">title de livre </label> <input type="text"
				id="titreLivre" name="titreLivre"
				value="<c:out value="${livre.titre}"/>" size="20" maxlength="20" />
			<span class="erreur">${form.getErreurs().get("titreLivre")}</span> <br /> <label
				for="resumeLivre">resume de Livre</label> <input type="text"
				id="resumeLivre" name="resumeLivre"
				value="<c:out value="${livre.resume}"/>" size="20" maxlength="20" />
			<span class="erreur">${form.getErreurs().get("resumeLivre")}</span> <br /> <label
				for="nbPagesLivre">nomber pages</label> <input type="text"
				id="nbPagesLivre" name="nbPagesLivre"
				value="<c:out value="${livre.nbPages}"/>" size="20" maxlength="20" />
			<span class="erreur">${form.getErreurs().get("nbPagesLivre")}</span> <br /> <label
				for="domaineLivre">domaine de Livre </label> <input type="text"
				id="domaineLivre" name="domaineLivre"
				value="<c:out value="${livre.domaine}"/>" size="20" maxlength="20" />
			<span class="erreur">${form.getErreurs().get("domaineLivre")}</span> <br />

			<input type="submit" value="ajouter" class="sansLabel" /> <br />

			<p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>
		</fieldset>
	</form>

	<form method="post" action="homeAdmin">
		<fieldset>
			<input type="submit" value="accueil" class="sansLabel" />
		</fieldset>
	</form>
</body>
</html>