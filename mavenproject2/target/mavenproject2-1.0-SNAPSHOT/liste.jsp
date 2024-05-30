<%-- 
    Document   : liste
    Created on : 27 mai 2024, 12:07:35
    Author     : daouda.fomba
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="liste.css">
    <title>Tableau</title>
</head>
<body>
    <div class="table-container">
        <img src="logostudent.png" alt="">
        <table>
            <thead>
                <tr>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Numéro</th>
                    <th>Compétence</th>
                    <th>Actions</th>
                     <th><button> <a href="form.jsp">Ajouter</a></button></th>
                </tr>
            </thead>
            <c:forEach items="${contacts}" var="Contact">
                <tbody>
                    <tr>
                        <td>${Contact.name}</td>
                        <td>${Contact.prenom}</td>
                        <td>${Contact.numero}</td>
                        <td>${Contact.favoriteSkill}</td>
                        <td>
                           <form action="Contact_servlet" method="get" style="display:inline;">
                                <input type="hidden" name="name" value="${Contact.name}">
                                <input type="hidden" name="action" value="delete">
                                <button type="submit">Supprimer</button>
                            </form>

                        </td>
                    </tr>
                </tbody>
            </c:forEach>
        </table>
    </div>
</body>
</html>
