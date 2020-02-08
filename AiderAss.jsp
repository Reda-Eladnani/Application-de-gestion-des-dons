<%-- 
    Document   : AiderAss
    Created on : 7 févr. 2020, 15:37:40
    Author     : MOUNA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Aider</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor_profilDonn/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css_profilDonn/heroic-features.css" rel="stylesheet">

</head>
    <body>
        <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">Application de gestion des dons</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          
          <li class="nav-item">
            <a class="nav-link" href="#">Vos favoris</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Vos dons</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Associations vous interressants</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
     <div class="container">

     <header class="jumbotron my-4" ><!--<img class="card-img-top" src="images/CINDH.jpg" alt=""  style="height:200px";>-->
         <h1 class="display-3"><center><font size="+1" face="myFirstFont" color="red"><i>"Il n'y a pas de meilleur exercice pour le coeur que de se pencher pour aider quelqu'un à se relver."John Holmes</i></font></center></h1>      
    </header>
       <center><h1>Veuillez choisir le type de votre don:</h1>
        <!-- Page Features -->
       
    <div class="row text-center">
        
       <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
            
          <div class="card-body">
            
          </div>
          <div class="card-footer">
            <a href="Nature.jsp" class="btn btn-primary">Nature</a>
          </div>
        </div>
      </div>
    
      <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
            
          <div class="card-body">
            
          </div>
          <div class="card-footer">
            <a href="Virement.jsp" class="btn btn-primary">Virement bancaire</a>
          </div>
        </div>
      </div>
        
    </div>
        </center>
     </div>
    
    
    
    </body>
</html>
