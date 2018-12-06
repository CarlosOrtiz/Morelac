<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/gerente.Master" AutoEventWireup="true" CodeBehind="ingresar_supervisor.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.ingresar_supervisor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <%--<form runat="server">--%>
        <div class="content">
            <div class="container-fluid">

                <div class="form-row">
                    <div class="col-md-10">
                        <div class="contact-form">
                            <div class="card-header">
                                <br />
                                <h4 class="card-title">INGRESAR SUPERVISOR</h4>
                            </div>
                            <div class="card-body">
                                <%--<form>--%>
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <asp:Label runat="server">NOMBRE 1 </asp:Label>
                                            <asp:TextBox runat="server" required ID="nom1" aria-describedby="addon-right addon-left" type="text" class="form-control" placeholder="JUAN" pattern="[A-Za-z]+"></asp:TextBox>
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
                                            <asp:Label runat="server"> APELLIDO 1 </asp:Label>
                                            <asp:TextBox ID="ape1" required runat="server" aria-describedby="addon-right addon-left" type="text" placeholder="PEREZ" class="form-control" pattern="[A-Za-z]+"></asp:TextBox>
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
                                            <asp:TextBox ID="ced" required runat="server" aria-describedby="addon-right addon-left" TextMode="Number" type="number" placeholder="1117552597" class="form-control" ></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <asp:Label runat="server">DIRECCIÓN</asp:Label>
                                            <asp:TextBox ID="Direc" required runat="server" aria-describedby="addon-right addon-left" type="text" placeholder="CAQUETA-FLORENCIA-ATALAYA" class="form-control" ></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <asp:Label runat="server">CELULAR</asp:Label>
                                            <asp:TextBox ID="Celular" required runat="server" aria-describedby="addon-right addon-left" TextMode="Number"  placeholder="3144703595" class="form-control" ></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <asp:Label runat="server">FECHA NACIMIENTO </asp:Label>
                                            <asp:TextBox ID="FechaN" required runat="server" aria-describedby="addon-right addon-left" TextMode="Date" Text="dd-mm-aaaa" class="form-control" ></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <asp:Label runat="server">CORREO</asp:Label>
                                            <asp:TextBox ID="correo" required runat="server" aria-describedby="addon-right addon-left" TextMode="email"  placeholder="@" class="form-control" ></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <asp:Label runat="server">CONTRASEÑA</asp:Label>
                                            <asp:TextBox ID="contrasena" required runat="server" aria-describedby="addon-right addon-left" TextMode="password"  placeholder="*****" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <asp:Label runat="server">SEXO </asp:Label>
                                        <asp:DropDownList ID="sexolis"  runat="server" aria-describedby="addon-right addon-left" class="form-control"  >
                                            <%--<asp:ListItem value =""> </asp:ListItem>
                                                <asp:ListItem value ="1"> M </asp:ListItem>
                                                <asp:ListItem value ="2"> F </asp:ListItem>--%>
                                        </asp:DropDownList>
                                        <%--<asp:RequiredFieldValidator id="validarsexo" ControlToValidate="sexolis" InitialValue=" " runat="server"/>--%>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label runat="server">ESTADO </asp:Label>
                                        <asp:TextBox ID="Estado" required runat="server" aria-describedby="addon-right addon-left" type="text" placeholder="ACTIVO O INACTIVO" class="form-control" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-12" runat="server">
                                    <div class="form-group">
                                        <asp:Label runat="server">DETALLES</asp:Label>
                                        <asp:TextBox ID="Detalle" runat="server" type="text" Rows="3" placeholder="Aqui puedes escribir una breve descripció" class="form-control border-input"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row" runat="server">
                                <div class="text-center">
                                    <asp:Button runat="server" Text="GUARDAR" type="submit" ID="guardarprove" OnClick="Guardar" class="btn btn-info btn-fill float-right" />
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        </div>
      <%--  <br />
        <br />
    </form>--%>
</asp:Content>
