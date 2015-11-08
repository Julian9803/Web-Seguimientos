<%-- 
    Document   : listarUsuarios
    Created on : 5/11/2015, 10:08:10 PM
    Author     : Duber
--%>

<%@page import="Controladores.HibernateUtil"%>
<%@page import="Modelos.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Menu.html" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Usuarios Registrados</title>

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
      
      <div class="container">
          <div class="row">
              <div class="col-xs-9">
                  <table class="table table-hover">
                      <thead>
                          <tr>
                              <th>Nombre</th>
                              <th>Apellidos</th>
                              <th>Numero Documento</th>
                              <th>Telefono</th>
                              <th>Correo</th>
                              <th>Direccion</th>
                              <th>Tipo Usuario</th>
                              <th>User</th>
                              <th>Actualizar Informacion</th>
                              <th>Eliminar Usuario</th>
                          </tr>
                      </thead>
                      <tbody>                          
                          <%                               
                              ArrayList<Usuario> listaU = new ArrayList<Usuario>();
                              listaU = (ArrayList<Usuario>) HibernateUtil.Query("FROM Usuario WHERE Estado = 'Activo'");
                              for(Usuario item: listaU){
                                out.println("<tr>");
                                out.println("<td>"+item.getNombres()+"</td>");
                                out.println("<td>"+item.getApellidos()+"</td>");
                                out.println("<td>"+item.getNumeroDocumento()+"</td>");
                                out.println("<td>"+item.getTelefono()+"</td>");
                                out.println("<td>"+item.getCorreo()+"</td>");
                                out.println("<td>"+item.getDireccion()+"</td>");
                                out.println("<td>"+item.getTipoUsuario()+"</td>");
                                out.println("<td>"+item.getUser()+"</td>");
                                out.println("<td><a href='actualizarUsuario.jsp?valor="+item.getIdUsuarios()+"' >Actualizar</a></td>");
                                out.println("<td><a href='SEusuario?action=eliminar&valor="+item.getIdUsuarios()+"'>Eliminar Usuario</a></td>");
                                out.println("</tr>");
                              }
                              
                          
                          %>                              
                      </tbody>
                  </table>
              </div>
          </div>
      </div>
      
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>    
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
