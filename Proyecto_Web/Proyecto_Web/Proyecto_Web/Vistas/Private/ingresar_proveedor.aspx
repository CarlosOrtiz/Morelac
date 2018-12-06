<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/gerente.Master" AutoEventWireup="true" CodeBehind="ingresar_proveedor.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.ingresar_proveedor" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Head" runat="server">
    </asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <form runat="server">
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
                                                <asp:TextBox runat="server" aria-describedby="addon-right addon-left" ID="nombre1" type="text" placeholder="JUAN" class="form-control" required pattern="[A-Za-z]+"/>
                                                <!---->
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="validationCustom02">
                                                    NOMBRE 2
                                                </label>
                                                <!---->
                                                <asp:TextBox runat="server" aria-describedby="addon-right addon-left" ID="nombre2" type="text" placeholder="CAMILO " class="form-control"/>
                                                <!---->
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="control-label" for="validationCustom03">
                                                    APELLIDO 1
                                                </label>
                                                <!---->
                                                <asp:TextBox runat="server" aria-describedby="addon-right addon-left" ID="apellido1" type="text" placeholder="PEREZ" class="form-control" required />
                                                <!---->
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="control-label" for="validationCustom04">
                                                    APELLIDO 2
                                                </label>
                                                <!---->
                                                <asp:TextBox runat="server" aria-describedby="addon-right addon-left" ID="apellido2" type="text" placeholder="ORTIZ" class="form-control" required/>
                                                <!---->
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="control-label" for="validationDefaultUsername">
                                                    EMAIL
                                                </label>
                                                <!---->
                                                <asp:TextBox runat="server" aria-describedby="addon-right addon-left" ID="email" type="email" placeholder="Email" class="form-control" required />
                                                <!---->
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="control-label" for="validationCustom07">
                                                    TELEFONO
                                                </label>
                                                <!---->
                                                <asp:TextBox runat="server" aria-describedby="addon-right addon-left" ID="tel" type="number" placeholder="3123456789" class="form-control" required />
                                                <!---->
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="control-label" for="validationCustom06">
                                                    DIRECCION
                                                </label>
                                                <!---->
                                                <asp:TextBox runat="server" aria-describedby="addon-right addon-left" ID="direc" type="text" placeholder="DIRECCION" class="form-control" required />
                                                <!---->
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="control-label" for="validationCustom08">
                                                    FECHA NACIMIENTO
                                                </label>
                                                <!---->
                                                <asp:TextBox runat="server" aria-describedby="addon-right addon-left" ID="nacimiento" type="date" placeholder="" class="form-control" required />
                                                <!---->
                                            </div>
                                        </div>
                                         <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="control-label" for="validationCustom07">
                                                    SEXO
                                                </label>
                                                <!---->
                                                <input aria-describedby="addon-right addon-left" type="text" id="validationCustom07" placeholder="SEXO" class="form-control" required >
                                                <!---->
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>DETALLES</label>
                                                <textarea rows="3" placeholder="Here can be your description" ID="detalle" class="form-control border-input"></textarea>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="text-center">
                                            <asp:Button Text="GUARDAR" ID="boton" runat="server" OnClick="Inser" class="btn btn-info btn-fill float-right" />
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
