<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/gerente.Master" AutoEventWireup="true" CodeBehind="gestionar_proveedor.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.gestionar_proveedor" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Head" runat="server">
    </asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <form>
        <div class="content">
            <div class="container-fluid">

                <div class="form-row">
                    <div class="col-md-10">
                        <div class="contact-form">
                            <div class="card-header">
                                <br />
                                <h4 class="card-title">PERFIL PROVEEDOR</h4>
                            </div>
                            <div class="card-body">
                                <%--<form>--%>
                                    <div class="row">

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="control-label" for="validationCustom01">
                                                    NOMBRE 1
                                                </label>
                                                <!---->
                                                <input aria-describedby="addon-right addon-left" name="nombre1" id="validationCustom01" type="text" placeholder="JUAN" class="form-control" required pattern="[A-Za-z]+">
                                                <!---->
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="validationCustom02">
                                                    NOMBRE 2
                                                </label>
                                                <!---->
                                                <input aria-describedby="addon-right addon-left" name="nombre2" type="text" id="validationCustom02" placeholder="CAMILO " class="form-control">
                                                <!---->
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="control-label" for="validationCustom03">
                                                    APELLIDO 1
                                                </label>
                                                <!---->
                                                <input aria-describedby="addon-right addon-left" name="apellido1" type="text" id="validationCustom03" placeholder="PEREZ" class="form-control" required>
                                                <!---->
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="control-label" for="validationCustom04">
                                                    APELLIDO 2
                                                </label>
                                                <!---->
                                                <input aria-describedby="addon-right addon-left" name="apellido2" type="text" id="validationCustom04" placeholder="ORTIZ" class="form-control" required>
                                                <!---->
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="control-label" for="validationDefaultUsername">
                                                    Email
                                                </label>
                                                <!---->
                                                <input aria-describedby="addon-right addon-left" name="email" id="inputGroupPrepend2" type="email" placeholder="Email" class="form-control" required>
                                                <!---->
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="control-label" for="validationCustom05">
                                                    NOMBRE FINCA
                                                </label>
                                                <!---->
                                                <input aria-describedby="addon-right addon-left" name="nomfinca" type="text" placeholder="MI TIERRITA" id="validationCustom05" class="form-control" required >
                                                <!---->
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="control-label" for="validationCustom06">
                                                    UBICACION
                                                </label>
                                                <!---->
                                                <input aria-describedby="addon-right addon-left" name="ubicacion type="text" id="validationCustom06" placeholder="VEREDA EL TRIUNFO" class="form-control" required >
                                                <!---->
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="control-label" for="validationCustom07">
                                                    TELEFONO
                                                </label>
                                                <!---->
                                                <input aria-describedby="addon-right addon-left" name="tel" type="number" id="validationCustom07" placeholder="3123456789" class="form-control" required >
                                                <!---->
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="control-label" for="validationCustom08">
                                                    FECHA NACIMIENTO
                                                </label>
                                                <!---->
                                                <input aria-describedby="addon-right addon-left" name="nacimiento" type="date" id="validationCustom08" placeholder="" class="form-control" required >
                                                <!---->
                                            </div>
                                        </div>

                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>DETALLES</label>
                                                <textarea rows="3" placeholder="Here can be your description" name="detalle" class="form-control border-input"></textarea>
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

</asp:Content>
