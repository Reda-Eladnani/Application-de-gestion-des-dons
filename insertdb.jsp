<%-- 
    Document   : insertdb
    Created on : 18 nov. 2019, 17:07:57
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
              insert into DONNATEUR(USERNAME,NOM,PRENOM,MDP) values(?,?,?,?)
              <sql:param value="${param.username}" />
              <sql:param value="${param.nom}" />
              <sql:param value="${param.prenom}" />
              <sql:param value="${param.mdp}" />
              
              
    </sql:update>
    <center>
        <h1>Bienvenue Dans la page Donnateur</h1>
    </center>
                      
    
    </body>
</html>

