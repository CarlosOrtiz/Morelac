<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Proyecto_Web.Vistas.Public.login" %>

<!DOCTYPE html>

<html lang="es">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Iniciar Sesión</title>
    <link rel="icon" href="../../Plantilla/Privado/dist/img/icon/vaca.png" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="../../Plantilla/Login/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../../Plantilla/Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="../../Plantilla/Login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <link rel="stylesheet" type="text/css" href="../../Plantilla/Login/vendor/animate/animate.css">
    <link rel="stylesheet" type="text/css" href="../../Plantilla/Login/css-hamburgers/hamburgers.min.css">
    <link rel="stylesheet" type="text/css" href="../../Plantilla/Login/vendor/animsition/css/animsition.min.css">
    <link rel="stylesheet" type="text/css" href="../../Plantilla/Login/vendor/select2/select2.min.css">
    <link rel="stylesheet" type="text/css" href="../../Plantilla/Login/vendor/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" type="text/css" href="../../Plantilla/Login/css/util.css">
    <link rel="stylesheet" type="text/css" href="../../Plantilla/Login/css/main.css">
   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script>
        function Confirm() {
            $('#myModal2').modal('show');
            return true;
        };

    </script>
</head>
<body>
    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100">
                <div class="login100-form-title" style="background-image: url('../../Plantilla/Privado/dist/img/empresa/equipo_trabajo.JPG');">
                    <span class="login100-form-title-1">INICIAR SESIÓN
                    </span>
                </div>

                <form class="login100-form validate-form" runat="server">
                    <div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
                        <span class="label-input100">Correo electrónico</span>
                        <asp:TextBox runat="server" CssClass="input100" ID="correo_login" placeholder="Ejemplo2019@gmail.com"></asp:TextBox>
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-18" data-validate="Password is required">
                        <span class="label-input100">Contraseña</span>
                        <asp:TextBox runat="server" TextMode="Password" CssClass="input100" ID="contra_login" placeholder="*******************"></asp:TextBox>
                        <span class="focus-input100"></span>
                    </div>

                    <div class="flex-sb-m w-full p-b-30">
                        <div class="contact100-form-checkbox">
                            <input disabled="disabled" class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                            <label class="label-checkbox100" for="ckb1">
                                Recuérdame
                            </label>
                        </div>

                        <div>
                            <a href="Olvidar.aspx" style="cursor: pointer;" class="txt1">¿Se te olvidó tu contraseña?
                            </a>
                        </div>
                    </div>

                    <div class="container-login100-form-btn">
                        <asp:Button runat="server" ID="In_Sesion" CssClass="login100-form-btn" Text="INICIAR SESIÓN" OnClick="In_Sesion_Click" />
                    </div>
                    <div class="container">
                        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal2" class="modal fade">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div style="background: #333" class="modal-header">
                                        <p style="text-align: center;color:white;font-size:30px;" class="modal-title"><strong>¡ADVERTENCIA!</strong></p>
                                    </div>
                                    <div class="modal-body">
                                        <p style="font-size: 16px; text-align: center;"><strong><%=mjs %></strong></p>
                                    </div>
                                    <div style="text-align: center;" class="modal-footer">
                                        <button style="text-align: center; position: center;border-color:none;" data-dismiss="modal" class="btn btn-warning" type="button">ACEPTAR</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>


    <!--===============================================================================================-->
    <script src="../../Plantilla/Login/vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="../../Plantilla/Login/vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script src="../../Plantilla/Login/vendor/bootstrap/js/popper.js"></script>
    <script src="../../Plantilla/Login/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="../../Plantilla/Login/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="../../Plantilla/Login/daterangepicker/moment.min.js"></script>
    <script src="../../Plantilla/Login/vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script src="../../Plantilla/Login/vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
    <script src="../../Plantilla/Login/js/main.js"></script>
    <%--    <script type="text/javascript" src="../../Plantilla/Login/js/jquery.backstretch.min.js"></script>
   <script>
        $.backstretch("../../Plantilla/Privado/images/Empresa/equipo_trabajo.JPG", {
            speed: 500

        });
    </script>--%>
</body>
</html>


