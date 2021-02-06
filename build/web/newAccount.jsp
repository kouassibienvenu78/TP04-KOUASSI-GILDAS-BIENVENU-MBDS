<%-- 
    Document   : newAccount
    Created on : 6 févr. 2021, 14:42:30
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </head>
    <body>
       
           <div class="alert alert-primary"  role="alert">
            <h1 style="text-align: center">MENU DE GESTION BANCAIRE CIV </h1>
</div>

   

    


      <div class="card text-center">
  <div class="card-body">
   <h5 class="card-title">LISTES DES COMPTES BANCAIRE</h5>
        <p class="card-text">Afficher la liste de  tous les comptes...</p>
        <a href="listeAccount?action=listerLesUtilisateurs" class="btn btn-primary">LISTER COMPTE</a>
  </div>
 </div>
 <h2 class="alert-primary">AJOUT DE COMPTE</h2>
        <form class="needs-validation" novalidate action="createAccount" method="post" style="margin: 50px;margin-top: 50px">
  <div class="form-row">
    <div class="col-md-4 mb-3">
      <label for="validationTooltip01">#IDENTIFIANT </label>
      <input name="login" type="text"class="form-control" id="validationTooltip01" placeholder=""  required>
    </div>
    <div class="col-md-4 mb-3">
      <label for="validationTooltip02">NOM </label>
      <input   name="nom" type="text" class="form-control" id="validationTooltip02" placeholder=""  required>
    
    </div>
        <div class="col-md-4 mb-3">
      <label for="validationTooltip02">PRENOM </label>
      <input   name="prenom" type="text" class="form-control" id="validationTooltip02" placeholder=""  required>
    
    </div>
        <div class="col-md-4 mb-3">
      <label for="validationTooltip02">SOLDE </label>
      <input   name="balance" type="number" class="form-control" id="validationTooltip02" placeholder=""  required>
    
    </div>
    
  </div>
            <input type="hidden" name="action" value="creerUnUtilisateur"/>
  <button class="btn btn-primary" type="submit">AJOUTER</button>
</form>
   

    </body>
</html>
