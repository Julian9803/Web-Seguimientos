<%-- 
    Document   : Menu
    Created on : 5/11/2015, 09:31:33 PM
    Author     : Duber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Menu.html"%>
<%@page import="Modelos.*"%>
<!DOCTYPE html>
    <% 
        Usuario us = new Usuario();
        us = (Usuario) request.getSession().getAttribute("User");
        if(us.getNombres() == null){
            response.sendRedirect("index.jsp?resp=nulo");
        }
    %>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Inicio de sesion</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  
      
      <h1>Bienvenido <% out.println(us.getNombres()); %></h1>
      
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>    
    <script src="js/bootstrap.min.js"></script>
  
</html>
