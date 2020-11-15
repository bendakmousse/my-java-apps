<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Creation Auteur</title>
        <link type="text/css" rel="stylesheet" href="form.css" />
    </head>
    <body>
        <form method="post" action="CreationAuteur">
            <fieldset>
                <legend>Creation</legend>
                <p>ajouter un auteur via ce formulaire.</p>
                
                <label for="num">num d'auteur</label>
                <input type="text" id="num" name="num" value="<c:out value="${auteur.num}"/>" size="20" maxlength="20" />
                <span class="erreur">${form.erreurs['num']}</span>
                <br />
                
                <label for="nom">Nom d'auteur</label>
                <input type="text" id="nom" name="nom" value="<c:out value="${auteur.nom}"/>" size="20" maxlength="20" />
                <span class="erreur">${form.erreurs['nom']}</span>
                <br />
                
                <label for="prenom">prenom d'auteur</label>
                <input type="text" id="prenom" name="prenom" value="<c:out value="${auteur.prenom}"/>" size="20" maxlength="20" />
                <span class="erreur">${form.erreurs['prenom']}</span>
                <br />
                
                <label for="dateNaissance">dateNaissance d'auteur</label>
                <input type="text" id="dateNaissance" name="dateNaissance" value="<c:out value="${auteur.dateNaissance}"/>" size="20" maxlength="20" />
                <span class="erreur">${form.erreurs['dateNaissance']}</span>
                <br />

                <input type="submit" value="ajouter" class="sansLabel" />
                <br />
                
                <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>
            </fieldset>
        </form>
    </body>
</html>