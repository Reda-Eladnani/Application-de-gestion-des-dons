<%@page import="org.register.Evenement"%>
<%@page import="org.creation.servlet.DB"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Association</title>
           <link href="css/navbar.css" rel="stylesheet">
   <meta name="viewport" content="width=device-width, initial-scale=1">

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
      <br><br><br><br><br>
  <center>
      <h1><i>Bienvenue sur votre plateforme</i></h1>
      <br><br>
      /*hnnaaa*/
  <div class="row">
      
         <%     DB d = new DB();
		ArrayList<Evenement> a = d.displayEvent();
		Iterator<Evenement> itr = a.iterator();
		while(itr.hasNext())
		{
			Evenement str = itr.next();
			%>
          <div class="col-lg-4 col-md-6">
            <div class="speaker">
              <img src="data:image/jpg;base64,<%=str.getImage()%>" alt="Event" class="img-fluid">
              <div class="details">
                <h3><%=str.getNom_event() %></h3>
                <h3><%=str.getDescription()%></h3>                               
              </div>
            </div>
          </div>
          <% }                                
               
          %>
  </div>
  /*7ta lhna*/
  </center>
    </body>
</html>
