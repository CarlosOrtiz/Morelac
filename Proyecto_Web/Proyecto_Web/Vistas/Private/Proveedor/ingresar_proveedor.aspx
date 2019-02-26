<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Home/Admin.Master" AutoEventWireup="true" CodeBehind="ingresar_proveedor.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.ingresar_proveedor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section class="content">
        <div class="row">
            <div class="col-md-3">

                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">AGREGAR FOTO </h3>
                    </div>
                    <div class="box-body">
                        <strong><i class="fa fa-file-image-o margin-r-5"></i></strong>
                        <p style="text-align: center; color: #333;" class="text-muted col-md-12">
                            <asp:Image runat="server" ID="IMG_EMPRESAS" ImageUrl="~/Plantilla/Privado/dist/img/avatar2.png" Width="150" />
                        </p>
                        <hr>
                        <div class="form-group">
                            <label style="text-align: center;" class="col-sm-2" for="exampleInputFile">Buscar</label>
                            <div class="col-sm-10">
                                <input type="file" id="exampleInputFile">
                                <p class="help-block">Formato de la imagen permitido .png "sin fondo"</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#Modificar" data-toggle="tab">Registrar Información</a></li>
                        <li><a href="#Act_Logo" data-toggle="tab">Registrar Finca</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="active tab-pane" id="Modificar">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">NOMBRE 1</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox runat="server" ID="nom1" CssClass="form-control style-form solo-letras" placeholder="JUAN" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">NOMBRE 2</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox runat="server" ID="nom2" CssClass="form-control style-form solo-letras" placeholder="JUAN" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">APELLIDO 1</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox runat="server" ID="ape1" CssClass="form-control style-form solo-letras" placeholder="JUAN" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">APELLIDO 2</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox runat="server" ID="ape2" CssClass="form-control style-form solo-letras" placeholder="JUAN" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">CÉDULA</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox Style="border-radius: 5px;" TextMode="Number" runat="server" ID="ced" CssClass="form-control style-form " pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">DIRECCIÓN</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="Direc" runat="server" aria-describedby="addon-right addon-left" placeholder="CAQUETA-FLORENCIA-ATALAYA" CssClass="form-control style-form solo-letras" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">NUMERO TELÉFONICO</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="Celular" runat="server" TextMode="Number" placeholder="3144703595" CssClass="form-control style-form "></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">FECHA DE NACIMIENTO</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="FechaN" runat="server" aria-describedby="addon-right addon-left" TextMode="Date" Text="dd-mm-aaaa" CssClass="form-control style-form"></asp:TextBox>
                                    </div>

                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">CORREO ELECTRONICO</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="correo" runat="server" aria-describedby="addon-right addon-left" TextMode="email" placeholder="Ejemplogmail.com" CssClass="form-control style-form "></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">CONTRASEÑA</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="contrasena"  runat="server" aria-describedby="addon-right addon-left" TextMode="password" placeholder="*****" CssClass="form-control style-form"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">SEXO</label>
                                    <div class="col-sm-9">
                                        <asp:DropDownList ID="DDL_Sexo" CssClass="form-control" aria-describedby="addon-right addon-left" runat="server" BackColor="White">
                                            <asp:ListItem Value="M" Text="Masculino"></asp:ListItem>
                                            <asp:ListItem Value="F" Text="Femenino"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">DETALLES</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="Detalle" runat="server" Rows="4" placeholder="Aqui puedes escribir una breve descripció" CssClass="form-control style-form" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10 text-right">
                                        <asp:LinkButton ID="Btn_Save1" runat="server" CssClass="btn btn-success" OnClick="Btn_Save1_Click"><i class="fa fa-save"></i>&nbsp Guardar Datos</asp:LinkButton>
                                        <asp:LinkButton ID="Btn_Cerrar1" runat="server" CssClass="btn btn-danger" OnClick="Btn_Cerrar1_Click"><i class="fa fa-remove"></i>&nbsp Cacelar</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane" id="Act_Logo">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">NOMBRE DE SU FINCA</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox runat="server" MaxLength="45" ID="nom_finca" CssClass="form-control style-form solo-letras" placeholder="JUAN" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">UBICACIÓN DE SU FINCA</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox runat="server"  MaxLength="45" ID="ubi_finca" CssClass="form-control style-form solo-letras" placeholder="JUAN" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">¿CUANTAS HECTÁREAS CUENTA SU FINCA?</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox runat="server" ID="hectarias"  MaxLength="45" TextMode="Number" CssClass="form-control style-form solo-letras" placeholder="JUAN" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">¿CUAL ES SU CAPACIDAD POR SEMANA PARA PRODUCCIR LECHE?</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox runat="server" ID="cap_leche"  MaxLength="45" TextMode="Number" CssClass="form-control style-form solo-letras" placeholder="JUAN" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">PROVEEDOR: </label>
                                    <div class="col-sm-9">
                                        <asp:DropDownList ID="Asig_Persona" CssClass="form-control select2" AppendDataBoundItems="true" runat="server" BackColor="White">
                                          <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                   <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10 text-right">
                                        <asp:LinkButton ID="Save_Finca" runat="server" CssClass="btn btn-success" OnClick="Save_Finca_Click"><i class="fa fa-save"></i>&nbsp Guardar Datos</asp:LinkButton>
                                        <asp:LinkButton ID="Remove_Finca" runat="server" CssClass="btn btn-danger" OnClick="Remove_Finca_Click"><i class="fa fa-remove"></i>&nbsp Cacelar</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </section>
</asp:Content>
