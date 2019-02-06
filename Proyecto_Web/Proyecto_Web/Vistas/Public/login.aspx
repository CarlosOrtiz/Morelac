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
    <link href="../Private/img/icon/vaca.png" rel="icon" />
    <link href="../Private/img/icon/vaca.png" rel="apple-touch-icon" />

    <!-- Bootstrap core CSS -->
    <link href="../Private/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <!--external css-->
    <link href="../Private/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="../Private/css/style.css" rel="stylesheet" />
    <link href="../Private/css/style-responsive.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script>
        function Confirm() {
            $('#myModal2').modal('show');
            return true;
        };
        //function Confirm(){
        //$(document).ready(function(){
        //$("#myModal2").modal();
        //});
        //}
    </script>
</head>
<body>
    <div id="login-page">
        <div class="container">
            <form runat="server" class="form-login">
                <h2 class="form-login-heading">
                    <div class="col-md-2"></div>
                    <a href="Index.aspx"><img src="../../multimedia/Logo sin fondo.png" width="100" class="col-md-8" /></a>
                    <div style="padding-bottom: 1%;" class="col-md-2"></div>
                    <strong>INICIAR SESIÓN</strong></h2>
                <div class="login-wrap">
                    <asp:TextBox runat="server" class="form-control" ID="correo_login" placeholder="CORREO ELECTRONICO"></asp:TextBox>
                    <label class="checkbox"></label>
                    <asp:TextBox runat="server" TextMode="Password" class="form-control" ID="contra_login" placeholder="CONTRASEÑA"></asp:TextBox>
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
                <!-- Modal  1 -->
                <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 style="text-align: center;" class="modal-title"><strong>¿RECORDAR CONTRASEÑA?</strong></h4>
                            </div>
                            <div class="modal-body">
                                <p style="font-size: 15px;text-align:center;"><strong> Ingresé su dirección de correo electrónico a continuación para restablecer su contraseña.</strong></p>
                                <asp:TextBox runat="server" TextMode="Email" ID="Email_modal" placeholder="CORREO ELECTRONICO" CssClass="form-control placeholder-no-fix" autocomplete="off"></asp:TextBox>
                            </div>
                            <div style="text-align: center;" class="modal-footer">
                                <asp:LinkButton style="text-align: center; position: center;" runat="server" ID="Cancelar_modal" data-dismiss="modal" CssClass="btn btn-danger"  >CANCELAR</asp:LinkButton>
                                <asp:LinkButton runat="server" style="text-align: center; position: center;" CssClass="btn btn-theme" ID="btn_enviar_modal">ENVIAR</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Modal  2-->
                <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal2" class="modal fade">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div style="background:#f0ad4e;" class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 style="text-align: center;" class="modal-title"><strong>¡ADVERTENCIA!</strong></h4>
                            </div>
                            <div class="modal-body">
                                <p style="font-size: 16px; text-align:center;"><strong><%=mjs %></strong></p>
                            </div>
                            <div style="text-align: center;" class="modal-footer">
                                <button style="text-align: center; position: center;" data-dismiss="modal" class="btn btn-warning" type="button">ACEPTAR</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- js placed at the end of the document so the pages load faster -->
    <script src="../../lib/jquery/jquery.min.js"></script>
    <script src="../../lib/bootstrap/js/bootstrap.min.js"></script>
    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="../Private/lib/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("../Private/img/empresa/equipo_trabajo.jpg", {
            speed: 500

        });
    </script>
</body>
</html>

