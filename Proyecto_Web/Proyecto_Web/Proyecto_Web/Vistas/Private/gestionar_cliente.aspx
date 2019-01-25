<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/gerente.Master" AutoEventWireup="true" CodeBehind="gestionar_cliente.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.gestionar_cliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form>
        <div class="content">
            <div class="container-fluid">

                <div class="form-row">
                    <div class="col-md-10">
                        <div class="contact-form">
                            <div class="card-header">
                                <br />
                                <h4 class="card-title">PERFIL</h4>
                            </div>
                            <div class="card-body">
                                <%--<form>--%>
                                    <div class="row">

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="control-label" for="validationCustom01">
                                                    NOMBRE DEL CLIENTE
                                                </label>
                                                <!---->
                                                <input aria-describedby="addon-right addon-left" id="validationCustom01" type="text" placeholder="CLIENTE" class="form-control" required pattern="[A-Za-z]+">
                                                <!---->
                                                <%--<div class="valid-feedback">
                                                    Looks good!
                                                </div>--%>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="validationCustom02">
                                                    NIT
                                                </label>
                                                <!---->
                                                <input aria-describedby="addon-right addon-left" type="number" id="validationCustom02" placeholder="8001112223 " class="form-control" required >
                                                <!---->
                                                <%--<div class="valid-feedback">
                                                    Looks good!
                                                </div>--%>
                                            </div>
                                        </div>

                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label class="control-label" for="validationCustom03">
                                                    DIRECCION
                                                </label>
                                                <!---->
                                                <input aria-describedby="addon-right addon-left" type="text" id="validationCustom03" placeholder="Calle 01 # 1 - 1" class="form-control" required>
                                                <!---->
                                                <%--<div class="invalid-feedback">
                                                    Please provide a valid state.
                                                </div>--%>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="control-label" for="validationDefaultUsername">
                                                    Email
                                                </label>
                                                <!---->
                                                <input aria-describedby="addon-right addon-left" id="inputGroupPrepend2" type="email" placeholder="Email" class="form-control" required>
                                                <!---->
                                                <%--<div class="invalid-feedback">
                                                    Please choose a unique and valid username.
                                                </div>--%>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="control-label" for="validationCustom04">
                                                    CIUDAD
                                                </label>
                                                <!---->
                                                <input aria-describedby="addon-right addon-left" type="text" placeholder="FLORENCIA" id="validationCustom04" class="form-control" required >
                                                <!---->
                                                <%--<div class="invalid-feedback">
                                                    Please provide a valid city.
                                                </div>--%>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="control-label" for="validationCustom05">
                                                    TELEFONO
                                                </label>
                                                <!---->
                                                <input aria-describedby="addon-right addon-left" type="number" id="validationCustom05" placeholder="4341234" class="form-control" required >
                                                <!---->
                                                <%--<div class="invalid-feedback">
                                                    Please provide a valid city.
                                                </div>--%>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label" for="validationCustom06">
                                                    RESPONSABLE
                                                </label>
                                                <!---->
                                                <input aria-describedby="addon-right addon-left" type="text" id="validationCustom06" placeholder="JUAN CAMILO" class="form-control" required>
                                                <!---->
                                                <%--<div class="invalid-feedback">
                                                    Please provide a valid city.
                                                </div>--%>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="control-label" for="validationCustom07">
                                                    CELUALR
                                                </label>
                                                <!---->
                                                <input aria-describedby="addon-right addon-left" type="number" id="validationCustom07" placeholder="3123456789" class="form-control" required>
                                                <!---->
                                                <%--<div class="invalid-feedback">
                                                    Please provide a valid city.
                                                </div>--%>
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>DETALLES</label>
                                                <textarea rows="3" placeholder="Here can be your description" class="form-control border-input"></textarea>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="text-center">
                                            <button class="btn btn-info btn-fill float-right" type="submit">Update Profile</button>
                                        </div>
                                    </div>

                                <div class="clearfix"></div>
                          
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
    </form>

   <%-- <script>
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function () {
            'use strict';
            window.addEventListener('load', function () {
                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                var forms = document.getElementsByClassName('needs-validation');
                // Loop over them and prevent submission
                var validation = Array.prototype.filter.call(forms, function (form) {
                    form.addEventListener('submit', function (event) {
                        if (form.checkValidity() === false) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();
    </script>--%>

</asp:Content>
