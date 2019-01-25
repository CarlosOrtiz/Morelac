<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Proyecto_Web.Vistas.Public.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>--%>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="Dashboard" />
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina" />

    <title>LOGIN</title>

    <!-- Favicons -->
    <link href="../../img/favicon.png" rel="icon" />
    <link href="../../img/apple-touch-icon.png" rel="apple-touch-icon" />

    <!-- Bootstrap core CSS -->
    <link href="../../lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <!--external css-->
    <link href="../../lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="../../css/style.css" rel="stylesheet" />
    <link href="../../css/style-responsive.css" rel="stylesheet" />
     <script>
        function myFunction() {
            alert("Contraseña o Usuario incorrecto\nPor Favor Verificar");
        }
    </script>
</head>
<body>
    <div id="login-page">
        <div class="container">
            <form runat="server" class="form-login">
                <h2 class="form-login-heading">LOGIN</h2>
                <div class="login-wrap">
                    <asp:TextBox runat="server" class="form-control" ID="Usu" placeholder="Usuario"></asp:TextBox>
                   
                                       <br />
                    <asp:TextBox runat="server" TextMode="Password" class="form-control" ID="contra" placeholder="Contraseña"></asp:TextBox>
                    <label class="checkbox">
                        <input type="checkbox" value="remember-me" />
                        <p>Recordar credenciales</p>
                    </label>
                    <asp:Button runat="server" ID="In_Sesion" class="btn btn-theme btn-block" type="submit" Text="INICIAR SESIÓN" OnClick="In_Sesion_Click" />
                   
                    <asp:Label runat="server" ID="mostrar"></asp:Label>
                    <hr />

                    <span class="pull-right">
                        <a data-toggle="modal" href="../../login.html#myModal">Se te olvidó tu contraseña?</a>
                       
                    </span>
                    <br />
                    <%--<div class="login-social-link centered">
            <p>or you can sign in via your social network</p>
            <button class="btn btn-facebook" type="submit"><i class="fa fa-facebook"></i> Facebook</button>
            <button class="btn btn-twitter" type="submit"><i class="fa fa-twitter"></i> Twitter</button>
          </div>
          <div class="registration">
            Don't have an account yet?<br/>
            <a class="" href="#">
              Create an account
              </a>
          </div>--%>
                </div>
                <!-- Modal -->
                <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title">OLVIDO CONTRASEÑA?</h4>
                            </div>
                            <div class="modal-body">
                                <p>Ingrese su dirección de correo electrónico a continuación para restablecer su contraseña.</p>
                                <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix" />
                            </div>
                            <div class="modal-footer">
                                <button data-dismiss="modal" class="btn btn-default" type="button">CANCELAR</button>
                                <button class="btn btn-theme" type="button">ENVIAR</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- modal -->
            </form>
        </div>
    </div>
    <!-- js placed at the end of the document so the pages load faster -->
    <script src="../../lib/jquery/jquery.min.js"></script>
    <script src="../../lib/bootstrap/js/bootstrap.min.js"></script>
    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="../../lib/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("../../img/empresa/equipo_trabajo.jpg", {
            speed: 500

        });
    </script>
</body>
</html>
