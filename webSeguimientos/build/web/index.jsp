
<%@page import="Modelos.Usuario"%>
<% 
    /*Usuario us = new Usuario();
    us = (Usuario) request.getSession().getAttribute("User");
    if(us.getNombres() != null){
        response.sendRedirect("Menu.jsp");
    }*/
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Inicio de sesion</title>


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
              <div class="col-xs-6">
                  <center>
                      <br>
                      <br>
                      <br>
                  <form action="SEusuario?Action=iniciarSesion" method="POST" role="form">
                      <div class="form-group">
                          <label>Nombre de usuario</label>
                          <input type="text" name="User" placeholder="User" class="form-control" required >
                      </div>
                      <div class="form-group">
                          <label>Digite su contraseña</label>
                          <input type="password" name="Pass" placeholder="Password" class="form-control" required>
                      </div>
                      <br>
                      <input type="submit" value="Click para Ingresar" class="btn btn-info">
                  </form>
                  </center>
              </div>
          </div>
      </div>
      
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>    
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
