
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Association</title>
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
            <a class="nav-link" href="Deconnecter" >Déconnexion</a>
          </li>
           
        </ul>
      </div>
    </div>
  </nav>
    <center>
        <h1>Associations </h1>
    </center>
    <form action="Supprimer" method="post">
    <div class="container">
        <div class="row text-center">
        <% Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
           Connection cn=DriverManager.getConnection("jdbc:derby://localhost:1527/DB","APP","azerty");
           PreparedStatement statement = cn.prepareStatement("SELECT * FROM association");           
            ResultSet resultat = statement.executeQuery();
            while(resultat.next()) {
        %>
       
    <!-- Page Features -->
    
        <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
            <%=resultat.getBlob("IMAGE") %>  
          <%--<div class="card-img-top" style="background-image: url('images/CINDH.jpg');">--%>
          <div class="card-body">
            <h4 class="card-title"><%=resultat.getString("NOM_ASSOCIATION") %></h4>
            <p class="card-text"><%=resultat.getString("ADRESSE") %></p>
            <p class="card-text"><%=resultat.getString("VILLE") %></p>
            <p class="card-text"><%=resultat.getString("COMPTE") %></p>
          </div>
          <div class="card-footer">
              <button class="login100-form-btn" type="submit" color="blue">
							Supprimer
						</button>
          </div>
           
        </div>
      </div>
         
   
     
          <% } %></div> </div>
    </form>
    </body>
</html>
