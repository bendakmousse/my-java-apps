
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div id="menu">

	<div style="text-align: right">
        <b>${admin.fullname} </b>
        <br><br>
        <a href="/logout">Logout</a>
    </div>
    
    <p><a href="<c:url value="/CreationAuteur"/>">ajouter un nouveau auteur </a></p>
    <p><a href="<c:url value="/CreationLivre"/>">ajouter un nouveau livre </a></p>
</div>

