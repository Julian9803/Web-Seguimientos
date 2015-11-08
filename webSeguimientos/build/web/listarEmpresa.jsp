<%-- 
    Document   : listarEmpresa
    Created on : 7/11/2015, 08:23:34 PM
    Author     : Duber
--%>

<%@page import="Controladores.HibernateUtil"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelos.Empresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Menu.html" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Empresas Registradas</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
      
      <div class="container-fluid">
          <div class="row">
              <div class="col-xs-9">
                  <table class="table table-hover">
                      <thead>
                          <tr>
                          <th>Razon Social</th>
                          <th>Direccion</th>
                          <th>NIT</th>
                          <th>Telefono</th>
                          <th>Email</th>
                          <th>Actualizar</th>
                          <th>Eliminar</th>
                          </tr>
                      </thead>
                      <%
                         ArrayList<Empresa> listaE = new ArrayList<Empresa>();
                         listaE = (ArrayList) HibernateUtil.Query("FROM Empresa WHERE Estado = 'Activo'");
                         for(Empresa item: listaE){
                             out.println("<tr>");
                             out.println("<td>"+item.getRazonSocial()+"</td>");
                             out.println("<td>"+item.getDireccion()+"</td>");
                             out.println("<td>"+item.getNit()+"</td>");
                             out.println("<td>"+item.getTelefono()+"</td>");
                             out.println("<td>"+item.getEmail()+"</td>");
                             out.println("<td><a href=actualizarEmpresa.jsp?valor="+item.getIdEmpresa()+">Actualizar</a></td>");
                             out.println("<td><a href='SEempresa?Action=Eliminar?valor="+item.getIdEmpresa()+"'>Eliminar</a></td>");
                             out.println("</tr>");
                         }
                       %>   
                  </table>
              </div>
          </div>
      </div>
      
      
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>    
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
