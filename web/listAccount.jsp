<%-- 
    Document   : listAccount
    Created on : 6 févr. 2021, 14:45:25
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
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
    <h5 class="card-title">AJOUTER UN COMPTE BANCAIRE</h5>
    <p class="card-text">Creer un compte avec le nom,prenom,solde....</p>
     <a href="newAccount.jsp" class="btn btn-primary">CREER COMPTE</a>
  </div>
 
          
          
</div>
        <h2 class="alert-primary">LISTES DES COMPTES</h2>
      <c:if test="${param['action'] == 'listerLesUtilisateurs'}" >
        <table class="table">
  <thead class="alert alert-primary">
    <tr>
      <th scope="col">#IDENTIFIANT</th>
      <th scope="col">NOM</th>
      <th scope="col">PRENOM</th>
      <th scope="col">SOLDE</th>
    </tr>
<c:set var="total" value="0"/>
  </thead>
  <tbody>
     <c:forEach var="u" items="${requestScope['listeDesUsers']}">
                    <tr>
                                                <td>${u.accountNumber}</td>

                        
                        <td  scope="row">${u.firstName}</td>
                        <td  scope="row">${u.lastName}</td>
                        <td scope="row">${u.balance} FCFA</td>
                        <!-- On compte le nombre d'utilisateur -->
                        <c:set var="total" value="${total+1}"/>
                        
                    </tr>
                </c:forEach>
<tr><td><b>TOTAL :<b>${total}</b> COMPTES</b></td><td></td><td></td><td></td></tr>
  </tbody>
</table>
        
   </c:if>     
   </body>
</html>

   