<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Proyecto_Web.Vistas.Public.login" %>

<!DOCTYPE html>

<html lang="es">
<head runat="server">
    <%--<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>--%>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="Dashboard" />
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina" />

    <title>Iniciar sesión</title>

    <!-- Favicons -->
    <link href="../../img/icon/vaca.png" rel="icon" />
    <link href="../../img/icon/vaca.png" rel="apple-touch-icon" />

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
                <h2 class="form-login-heading">
                    <div class="col-md-2"></div>
                    <img src="../../multimedia/Logo sin fondo.png" width="100" class="col-md-8" />
                    <div style="padding-bottom: 1%;" class="col-md-2"></div>
                    <strong>INICIAR SESIÓN</strong></h2>
                <div class="login-wrap">
                    <asp:TextBox runat="server" class="form-control" ID="Usu" placeholder="CORREO ELECTRONICO"></asp:TextBox>
                    <label class="checkbox"></label>
                    <asp:TextBox runat="server" TextMode="Password" class="form-control" ID="contra" placeholder="CONTRASEÑA"></asp:TextBox>
                    <label class="checkbox"></label>
                    <%--<label class="checkbox col-md-12">
                        <input  class="col-md-1" type="checkbox" value="remember-me" />
                        <p style="padding-left: 0px;margin-bottom: 0px;" class="col-md-11">Recordar credenciales</p>
                    </label>--%>
                    <asp:Button runat="server" ID="In_Sesion" class="btn btn-theme btn-block" type="submit" Text="INICIAR SESIÓN" OnClick="In_Sesion_Click" />

                    <asp:Label runat="server" ID="mostrar"></asp:Label>
                    <hr />
                    <div class="col-md-12">
                       <a class="col-md-12" style="color: black; text-align: center;" data-toggle="modal" href="../../login.html#myModal"><strong>¿Se te olvidó tu contraseña?</strong></a>
                    </div>
                    <br />
                </div>
                <!-- Modal -->
                <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 style="text-align:center;" class="modal-title">¿RECORDAR CONTRASEÑA?</h4>
                            </div>
                            <div class="modal-body">
                                <p style="font-size:16px;">Ingresé su dirección de correo electrónico a continuación para restablecer su contraseña.</p>
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

