<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/gerente.Master" AutoEventWireup="true" CodeBehind="modi_empresa.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.modi_empresa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="content">
            <div class="container-fluid">

                <div class="form-row">
                    <div class="col-md-10">
                        <div class="contact-form">
                            <div class="card-header">
                                <br />
                                <h4 class="card-title">PERFIL EMPRESA</h4>
                            </div>
                            <div class="card-body">
                                <%--<form>--%>
                                <div class="row">

                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label class="control-label" for="validationCustom01">
                                                NOMBRE EMPRESA
                                            </label>
                                            <!---->
                                            <asp:textbox runat="server" aria-describedby="addon-right addon-left" id="empresa" type="text" placeholder="EMPRESA" class="form-control" pattern="[A-Za-z]+"></asp:textbox>
                                            <!---->
                                        </div>
                                    </div>



                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label class="control-label">
                                                NIT
                                            </label>
                                            <!---->
                                            <asp:textbox runat="server" aria-describedby="addon-right addon-left" type="number" id="iden" placeholder="800123456" class="form-control"></asp:textbox>
                                            <!---->
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label class="control-label">
                                                DIRECCION
                                            </label>
                                            <!---->
                                            <asp:textbox runat="server" aria-describedby="addon-right addon-left" type="text" id="direc" placeholder="UBICACION" class="form-control"></asp:textbox>
                                            <!---->
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label class="control-label">
                                                EMAIL
                                            </label>
                                            <!---->
                                            <asp:textbox runat="server" aria-describedby="addon-right addon-left" id="corre" type="email" placeholder="Email" class="form-control"></asp:textbox>
                                            <!---->
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label class="control-label">
                                                TELEFONO
                                            </label>
                                            <!---->
                                            <asp:textbox runat="server" aria-describedby="addon-right addon-left" type="number" placeholder="3147258369" id="telefo" class="form-control"></asp:textbox>
                                            <!---->
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label class="control-label">
                                                DUEÑO
                                            </label>
                                            <!---->
                                            <asp:textbox runat="server" aria-describedby="addon-right addon-left" type="text" placeholder="DUEÑO" id="due" class="form-control"></asp:textbox>
                                            <!---->
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>MISION</label>
                                            <textarea rows="5" runat="server" placeholder="MISION EMPRESA" id="mi" class="form-control border-input"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>VISION</label>
                                            <textarea rows="5" runat="server" placeholder="VISION EMPRESA" id="vi" class="form-control border-input"></textarea>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="text-left">
                                        <asp:button id="boton1" text="CONSULTAR" runat="server" class="btn btn-info btn-fill float-center" onclick="Consul" />
                                    </div>
                                    <div class="text-right">
                                        <asp:button id="boton" text="MODIFICAR" runat="server" class="btn btn-info btn-fill float-center" onclick="Bototn_Clic" />
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
