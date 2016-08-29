<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mostrar.aspx.cs" Inherits="Castorcitos.Pages.Mostrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mostrar</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="../CSS/EstiloAdmin.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="Admin.aspx"><span class="glyphicon glyphicon-home"></span>  Home</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-pencil"></span>&nbsp;Insertar<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="Generales.aspx#section1">Imagenes</a></li>
                <li><a href="Generales.aspx#section2">Seguro Social</a></li>
                <li><a href="Generales.aspx#section3">Domicilio</a></li>
                <li><a href="Personas.aspx">Persona</a></li>
                <li><a href="Generales.aspx#section4">Telefonos</a></li>
                <li><a href="Trabajador.aspx">Trabajadores</a></li>
                <li><a href="Hijos.aspx">Hijos</a></li>
                  <li><a href="Responsable.aspx">Responsables</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-edit"></span>&nbsp;Modificar<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Page 1-1</a></li>
                <li><a href="#">Page 1-2</a></li>
                <li><a href="#">Page 1-3</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-eye-open"></span>&nbsp;Consultar<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="MostrarImagenes.aspx">Imagenes</a></li>
                <li><a href="#">Page 1-2</a></li>
                <li><a href="#">Page 1-3</a></li>
              </ul>
            </li>
            <li><a href="#"><span class="glyphicon glyphicon-trash"></span>&nbsp;Eliminar</a></li>
            <li><a href="Credenciales.aspx"><span class="glyphicon glyphicon-credit-card"></span>&nbsp;Credenciales</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <!--<li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>-->
            <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>                  
          </ul>
        </div>
      </div>
    </nav>
    <!--sdlbajkladvbklabvjklavbjkfvbjklvbvjklabvjklabvjklabvjklabjklad-->    
    <div>       
        <div class="container">
            <h2>Credenciales</h2>                           
            <table class="table">
                <thead>                     
                    <td colspan="4">DATOS NIÑO(A)</td>
                </thead>
                <tbody>
                    <tr>
                        <td colspan="4"><center><img src=".jpg" class="img-circle"  width="140" height="140" style="border-radius:143px 143px 143px 0px;"/></center> </td>
                    </tr>
                    <tr>                    
                        <td colspan="3">Nombre: </td>
                        <td>CURP: </td>   
                    </tr>
                    <tr>
                        <td colspan="2">Domicilio: </td>
                        <td>Colonia: </td>
                        <td>Municipio: </td>
                    </tr>
                    <tr>
                        <td>Edad: </td>
                        <td>Peso: </td>
                        <td>Estatura: </td>
                        <td>Talla de camiseta: </td>
                    </tr>
                    <tr>
                        <td colspan="3">En caso de emergencia avisar a: </td>
                        <td>Parentesco: </td>
                    </tr>
                    <tr>
                        <td colspan="4">No. de Seguro social</td>
                    </tr>
                    <tr>
                        <td colspan="4">Padecimientos, Alergias u otros</td>
                    </tr>                             
                </tbody>
            </table>
            <hr />
            <hr />

            <table class="table">
                <thead>
                    <td colspan="4">DATOS DEL PADRE AFILIADO AL SINDICATO</td>
                </thead>
                <tbody>
                    <tr>
                        <!-- <td colspan="4"><center><img src=".jpg" class="img-circle"  width="140" height="140" style="border-radius:143px 143px 143px 0px;"/></center> </td>-->
                    </tr>
                    <tr>                    
                        <td colspan="4">Nombre: </td>                       
                    </tr>
                    <tr>
                        <td colspan="2">Domicilio: </td>
                        <td>Colonia: </td>
                        <td>Municipio: </td>
                    </tr>
                    <tr>
                        <td colspan="2">Teléfono(particular u oficina): </td>
                        <td colspan="2">Celular: </td>
                    </tr>
                    <tr>
                        <td colspan="2">Carrera/Departamento: </td>
                        <td colspan="2">No. de Trabajador: </td>
                    </tr>
                </tbody>
            </table>
            <hr />
            <hr />

            <table class="table">
                <thead>
                     <td colspan="4">DATOS DEL RESPONSABLE</td>
                </thead>
                <tbody>
                    <tr>
                       <!-- <td colspan="4"><center><img src=".jpg" class="img-circle"  width="140" height="140" style="border-radius:143px 143px 143px 0px;"/></center> </td>-->
                    </tr>                
                    <tr>
                        <td colspan="4">NOmbre: </td>
                    </tr>
                    <tr>
                        <td colspan="2">Domicilio: </td>
                        <td>Colonia: </td>
                        <td>Municipio: </td>
                    </tr>
                    <tr>
                        <td colspan="2">Teléfono(particular u oficina): </td>
                        <td>Celular: </td>
                        <td>Parentesco: </td>
                    </tr>
                </tbody>
            </table>
        </div>    
    </div>    
</body>
</html>
