<%-- 
    Document   : actualizarUsuario
    Created on : 5/11/2015, 10:44:14 PM
    Author     : Duber
--%>
<%@page import="Modelos.Usuario"%>
<%@page import="Controladores.HibernateUtil"%>
<% 

    Usuario us = (Usuario) HibernateUtil.QueryUnicode("FROM Usuario WHERE idUsuarios="+request.getParameter("valor"));

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Actualizar Usuario</title>

    
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
                  <form role="form" action="SEusuario?Action=Actualizar" method="POST">
                      <div class="form-group">
                          <label>Nombres del usuario</label>
                          <input type="text" name="Nombres" class="form-control" value="<%= us.getNombres() %>" required>
                      </div>
                      <div class="form-group">
                          <label>Apellidos del usuario</label>
                          <input type="text" name="Apellidos" class="form-control" value="<%= us.getApellidos() %>" placeholder="" required>
                      </div>
                      <div class="form-group">
                          <label>Numero de documento</label>
                          <input type="number" name="numeroDocumento" class="form-control" value="<%= us.getNumeroDocumento() %>" placeholder="" required>
                      </div>
                      <div class="form-group">
                          <label>Telefono</label>
                          <input type="number" name="Telefono" class="form-control" value="<%= us.getTelefono()%>" placeholder="" required>
                      </div>
                      <div class="form-group">
                          <label>Correo</label>
                          <input type="text" name="Correo" class="form-control" value="<%= us.getCorreo()%>" placeholder="" required>
                      </div>
                      <div class="form-group">
                          <label>Direccion</label>
                          <input type="text" name="Direccion" class="form-control" value="<%= us.getDireccion()%>" placeholder="" required>
                      </div>
                      <div class="form-group">
                          <label>Tipo de Usuario</label>
                          <% if(us.getTipoUsuario().equalsIgnoreCase("Aprendiz")){ %>
                          <select name="tipoUsuario" class="form-control">                             
                              <option value="Aprendiz" selected="true">Aprendiz</option>                              
                              <option value="Instructor">Instructor</option>
                              <option value="Coordinador">Coordinador</option>
                              <option value="Lider">Lider</option>
                          </select>
                          <% } %>
                          <% if(us.getTipoUsuario().equalsIgnoreCase("Instructor")){ %>
                          <select name="tipoUsuario">                             
                              <option value="Aprendiz">Aprendiz</option>                              
                              <option value="Instructor" selected="true">Instructor</option>
                              <option value="Coordinador">Coordinador</option>
                              <option value="Lider">Lider</option>
                          </select>
                          <% } %>
                          <% if(us.getTipoUsuario().equalsIgnoreCase("Coordinador")){ %>
                          <select name="tipoUsuario">                             
                              <option value="Aprendiz" >Aprendiz</option>                              
                              <option value="Instructor">Instructor</option>
                              <option value="Coordinador" selected="true">Coordinador</option>
                              <option value="Lider">Lider</option>
                          </select>
                          <% } %>
                          <% if(us.getTipoUsuario().equalsIgnoreCase("Lider")){ %>
                          <select name="tipoUsuario">                             
                              <option value="Aprendiz" >Aprendiz</option>                              
                              <option value="Instructor">Instructor</option>
                              <option value="Coordinador">Coordinador</option>
                              <option value="Lider" selected="true">Lider</option>
                          </select>
                          <% } %>
                      </div>
                      <br>
                      <input type="hidden" name="idUsuario" value="<%= us.getIdUsuarios() %>">
                      <input type="submit" value="Actualizar" class="btn btn-primary">
                  </form>
              </div>
          </div>
      </div>
      
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>    
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
