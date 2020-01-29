<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Ruda:400,900,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animations/animations.css" rel="stylesheet">
  <link href="lib/hover-pack/hover-pack.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style_1.css" rel="stylesheet">
  <link href="css/colors/color-74c9be.css" rel="stylesheet">
        <title>Création événenement</title>
        <link href="css/navbar.css" rel="stylesheet">
    </head>
    <body>    
    <div id="container">
      <nav>
        <div id="logo">
         Association
        </div>
        <ul>
          <li class="dropdown" onmouseover="hover(this);" onmouseout="out(this);"><a href="#">Evénement &nbsp;<i class="fa fa-caret-down"></i></a>
            <div class="dd">
              <div id="up_arrow"></div>
            <ul>              
              <li><a href="CreationEvent.jsp">Création</a></li>
              <li><a href="Modifierevent.jsp">Modification</a></li>
              <li><a href="#">Supression</a></li>
            </ul>
            </div>
          </li>          
          <li class="dropdown"><a href="#">Compte &nbsp;<i class="fa fa-caret-down"></i> </a>
           <div class="dd">
             <div id="u_a_c"><div id="up_arrow"></div></div>
            <ul>             
              <li><a href="CompteAssociation.jsp">Voir Profile</a></li>
              <li><a href="index.html">Se déconnecter</a></li>
            </ul>
            </div>
              <li class="dropdown"><a href="#">Other &nbsp;<i class="fa fa-caret-down"></i> </a>
           <div class="dd">
             <div id="u_a_c"><div id="up_arrow"></div></div>
            <ul>              
              <li><a href="#">Langage</a></li>
            </ul>
            </div>
        </ul>
      </nav>
    </div>
        <br><br><br>
          <div id="white">
    <div class="container">
      <div class="row mt">
        <div class="col-lg-4 col-lg-offset-4 centered">
          <h3>Créez-vous un événement</h3>
          <hr>
        </div>
      </div>
        
  <div class="row">
    <div class="col-md-8 col-md-offset-2">
    <div class="form-group"> 
        <form class="contact-form php-mail-form" method="POST" action="NewOffer" enctype="multipart/form-data">
      <div class="form-group">  
              <input type="text" name="id" class="form-control" id="contact-name" placeholder="N°Evenement" data-rule="minlen:4"  >
                    
              
            </div>
            <div class="form-group">                                
              <input type="name" name="name" class="form-control" id="contact-name" placeholder="Titre" data-rule="minlen:4"  >
                    
              
            </div>
              
           <div class="form-group">
              <input class="form-control" name="description" id="contact-message" placeholder="Description" rows="10" data-rule="required" >
              
            </div>
        <div class="form-group">
              <input class="form-control" name="image" accept="image/*"  type="file"  required>
              
            </div>
         <div class="form-send">
              <button type="submit" class="btn btn-large">Enregistrer</button>
            </div>
          
        </form>
    </div>
    </div>
  </div>
        </div>
    </body>
</html>
