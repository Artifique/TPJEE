<%-- 
    Document   : form
    Created on : 27 mai 2024, 12:07:25
    Author     : daouda.fomba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="form.css">
    <title>Document</title>
</head>
<body>
    <div class="form-container">
        <h1>Ajouter un Contact</h1>
        <!-- <img src="img/logo.png" alt=""> -->
        <form action="Contact_servlet" method="post">
            <label for="name">Nom:</label>
            <input type="text" id="name" name="name" required>
            <label for="name">Prenom:</label>
            <input type="text" id="prenom" name="prenom" required>
            <label for="numero">Tel:</label>
            <input type="text" id="numero" name="numero" required>
            <label for="favoriteSkill">Compétence Favorite:</label>
            <input type="text" id="favoriteSkill" name="favoriteSkill" required>
            <button type="submit">Ajouter</button>
          
        </form>
    </div>
</body>
</html>
