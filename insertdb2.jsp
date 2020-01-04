<%-- 
    Document   : insertdb2
    Created on : 27 nov. 2019, 00:36:23
    Author     : MOUNA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login in</title>
    </head>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
    <body>
        <sql:setDataSource var="dbSource" driver="org.apache.derby.jdbc.ClientDriver" url="jdbc:derby://localhost:1527/DB" user="DB" password=" "/>
        <sql:update dataSource="${dbSource}" var="result">
              insert into ASSOCIATION(USERNAME,NOM_ASSOCIATION,REÇU,ADRESSE,VILLE,COMPTE,MDP) values(?,?,?,?,?,?,?)
              <sql:param value="${param.username}" />
              <sql:param value="${param.nom}" />
              <sql:param value="${param.reçu}" />
              <sql:param value="${param.adresse}" />
              <sql:param value="${param.ville}" />
              <sql:param value="${param.compte}" />
              <sql:param value="${param.mdp}" />
              
    </sql:update>
    <center>
        <h1>Bienvenue Dans la page Association</h1>
    </center>
                      
    
    </body>
</html>