<%-- 
    Document   : nuevoUsuario
    Created on : 6/11/2015, 09:45:51 AM
    Author     : Duber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Inisio de sesion</title>

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
                  <form action="SEusuario?Action=Registrar" method="POST" role="form">
                      <div class="form-group">
                          <label>Digite sus nombres</label>
                          <input class="form-control" type="text" name="Nombres" placeholder="Nombres" required>
                      </div>
                      <div class="form-group">
                          <label>Digite sus apellidos</label>
                          <input class="form-control" type="text" name="Apellidos" placeholder="Apellidos" required>
                      </div>
                      <div class="form-group">
                          <label>Su numero de documento</label>
                          <input class="form-control" type="text" name="numeroDocumento" placeholder="Numero de documento" required>
                      </div>
                      <div class="form-group">
                          <label>Digite su Telefono</label>                          
                          <input class="form-control" type="number" name="Telefono" placeholder="Telefono" required>
                      </div>
                      <div class="form-group">
                          <label>Correo</label>
                          <input class="form-control" type="text" name="Correo" placeholder="Email" required>
                      </div>
                      <div class="form-group">
                          <label>Direccion</label>
                          <input class="form-control" type="text" name="Direccion" placeholder="Direccion" required>
                      </div>
                      <div class="form-group">
                          <label>Tipo Usuario</label>
                          <select name="tipoUsuario" class="form-control">
                              <option value="Aprendiz">Aprendiz</option>
                              <option value="Instructor">Instructor</option>
                              <option value="Lider">Lider</option>
                              <option value="Coordinador">Coordinador</option>
                          </select>
                      </div>
                      <br>
                      <input type="submit" value="Registrar" class="btn btn-primary">
                  </form>
              </div>
          </div>
      </div>
      
      
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>    
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
