<%-- 
    Document   : nuevaEmpresa
    Created on : 7/11/2015, 09:59:11 PM
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
                  <form role="form" action="SEempresa?Action=Registrar" method="POST">
                      <div class="form-group">
                          <label>Escriba la razon social</label>
                          <input type="text" class="form-control" name="RazonSocial" placeholder="Razon Social" required>
                      </div>
                      <div class="form-group">
                          <label>Direccion</label>
                          <input type="text" class="form-control" name="Direccion" placeholder="Direccion" required>
                      </div>
                      <div class="form-group">
                          <label>NIT</label>
                          <input type="number" class="form-control" name="NIT" placeholder="NIT" required>
                      </div>
                      <div class="form-group">
                          <label>Telefono</label>
                          <input type="number" class="form-control" name="Telefono" placeholder="Telefono" required>
                      </div>
                      <div class="form-group">
                          <label>Email</label>
                          <input type="email" class="form-control" name="Email" placeholder="Correo electronico" required>
                      </div>
                      <br>
                      <input type="submit" class="btn btn-info">
                  </form>
                  
              </div>
          </div>
      </div>
      
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>    
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
