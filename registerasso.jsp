<%-- 
    Document   : registerasso
    Created on : 26 nov. 2019, 19:40:17
    Author     : MOUNA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Sign in</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,700,900|Oswald:400,700"> 
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/mediaelementplayer.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="css/fl-bigmug-line.css">
    
  
   

    <link rel="stylesheet" href="css/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
        
        <title>register</title>
    </head>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <body>
       
    
    <div class="site-blocks-cover overlay" style="background-image: url('images/hero_bg_3.jpg');" data-aos="fade" data-stellar-background-ratio="0.5" >
      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-7 text-center" data-aos="fade-up" data-aos-delay="400">
              <form action="AjoutAssociation" method="post" >
        <center><h3><u>Créez-vous un compte</u></h3></center>
        <center>
            <div border:1px solid black border-radius:30px width:50px background-color: lightgoldenrodyellow>
        <table style=" margin-left: 50px">
            
            <tbody>
                <tr>
                    <td padding:15px><label style="color: black">Username</label></td>
                    <td padding:15px><input type="text" class="form-control" name="username" placeholder="username"/></td> 
                </tr>
                <tr>
                    <td padding:15px><label style="color: black">Nom de l'association</label></td>
                    <td padding:15px><input type="text" class="form-control" name="nom" placeholder="nom"/></td> 
                </tr>
                
                <tr>
                    <td padding:15px><label style="color: black">Adresse</label></td>
                    <td padding:15px><input type="text" class="form-control" name="adresse" placeholder="adresse"/></td> 
                </tr>
                 <tr>
                    <td padding:15px><label style="color: black">Ville</label></td>
                    <td padding:15px><input type="text" class="form-control" name="ville" placeholder="ville"/></td> 
                </tr> 
                 <tr>
                    <td padding:15px><label style="color: black">Numéro de compte</label></td>
                    <td padding:15px><input type="text" class="form-control" name="compte" placeholder="compte"/></td> 
                </tr>
                <tr>
                    <td padding:15px><label style="color: black">Mot de passe</label></td>
                    <td padding:15px><input type="password" class="form-control" name="mdp" placeholder="mot de passe"/></td>
                </tr>
                <tr>
                    <td padding:15px colspan="2" style="text-align:center" ><input type="submit"  class="btn btn-success" value="Créer mon compte" /></td>                      
                    <td padding:15px><a href="signin.jsp">S'identifier</a></td>
                </tr>
            </tbody>
        </table>
            </div>
        </center>
    </form>
            
          </div>
        </div>
      </div>
    </div>

   

    
      <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/mediaelement-and-player.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/circleaudioplayer.js"></script>

  <script src="js/main.js"></script>
    </body>
</html>
