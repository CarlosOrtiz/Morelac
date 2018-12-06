<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/gerente.Master" AutoEventWireup="true" CodeBehind="gestionar_supervisor.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.gestionar_supervisor" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
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
                                <h4 class="card-title">PERFIL SUPERVISOR</h4>
                            </div>
                            <div class="card-body">
                                <div class="row">

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <asp:Label runat="server">NOMBRE 1 </asp:Label>
                                            <asp:TextBox runat="server" ID="nom1" aria-describedby="addon-right addon-left" type="text" class="form-control" placeholder="JUAN" pattern="[A-Za-z]+"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <asp:Label runat="server"> NOMBRE 2 </asp:Label>
                                            <asp:TextBox ID="nom2" runat="server" aria-describedby="addon-right addon-left" type="text" placeholder="JOSE" class="form-control" pattern="[A-Za-z]+"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <asp:Label runat="server">  APELLIDO 1 </asp:Label>
                                            <asp:TextBox ID="ape1" runat="server" aria-describedby="addon-right addon-left" type="text" placeholder="PEREZ" class="form-control" pattern="[A-Za-z]+"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <asp:Label runat="server"> APELLIDO 2 </asp:Label>
                                            <asp:TextBox ID="ape2" runat="server" aria-describedby="addon-right addon-left" type="text" placeholder="PEREZ" class="form-control" pattern="[A-Za-z]+"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <asp:Label runat="server"> CÉDULA </asp:Label>
                                            <asp:TextBox ID="ced" runat="server" aria-describedby="addon-right addon-left" TextMode="Number" type="number" placeholder="1117552597" class="form-control" pattern="[A-Za-z]+"></asp:TextBox>
                                        </div>
                                    </div>


                                </div>

                                <div class="col-md-4">
                                    <div class="form-group">
                                        <asp:Label runat="server">DIRECCIÓN</asp:Label>
                                        <asp:TextBox ID="Direc" runat="server" aria-describedby="addon-right addon-left" type="text" placeholder="CAQUETA-FLORENCIA-ATALAYA" class="form-control" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label runat="server">NUMERO CELULAR</asp:Label>
                                        <asp:TextBox ID="Celular" runat="server" aria-describedby="addon-right addon-left" TextMode="Number" type="number" placeholder="3144703595" class="form-control" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label runat="server">FECHA NACIMIENTO </asp:Label>
                                        <asp:TextBox ID="FechaN" runat="server" aria-describedby="addon-right addon-left" TextMode="Date" Text="dd-mm-aaaa" class="form-control" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label runat="server">SEXO </asp:Label>
                                        <asp:TextBox ID="sexo" runat="server" aria-describedby="addon-right addon-left" type="text" placeholder="F O M" class="form-control" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label runat="server">ESTADO </asp:Label>
                                        <asp:TextBox ID="Estado" runat="server" aria-describedby="addon-right addon-left" type="text" placeholder="ACTIVO O INACTIVO" class="form-control" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-12" runat="server">
                                    <div class="form-group">
                                        <asp:Label runat="server">DETALLES</asp:Label>
                                        <asp:TextBox ID="Detalle" runat="server" TextMode="Phone" Rows="3" placeholder="Aqui puedes escribir una breve descripció" class="form-control border-input"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="row" runat="server">
                                <div class="text-center">

                                    <asp:Button runat="server" Text="Guardarx" type="submit" ID="guardarSuper" onclick="guardar"/>

                                </div>
                            </div>

                            <div class="clearfix"></div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
    </form>
</asp:Content>
