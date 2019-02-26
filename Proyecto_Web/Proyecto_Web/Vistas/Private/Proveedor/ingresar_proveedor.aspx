<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Home/Admin.Master" AutoEventWireup="true" CodeBehind="ingresar_proveedor.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.ingresar_proveedor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
   <section class="content">

        <div class="row">
            <div class="col-md-3">

                <!-- About Me Box -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">AGREGAR FOTO </h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <strong><i class="fa fa-file-image-o margin-r-5"></i></strong>
                        <p style="text-align: center; color: #333;" class="text-muted col-md-12">
                            <asp:Image runat="server" ID="IMG_EMPRESAS" ImageUrl="~/Plantilla/Privado/dist/img/avatar2.png" Width="150" />
                        </p>
                        <hr>
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
                                    <label class="col-sm-3 control-label" >NOMBRE 1</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox runat="server" ID="nom1" CssClass="form-control style-form solo-letras" placeholder="JUAN" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label" >NOMBRE 2</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox runat="server" ID="nom2"  CssClass="form-control style-form solo-letras" placeholder="JUAN" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                                 <div class="form-group">
                                    <label class="col-sm-3 control-label"> APELLIDO 1</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox runat="server" ID="ape1"  CssClass="form-control style-form solo-letras" placeholder="JUAN" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                                 <div class="form-group">
                                    <label class="col-sm-3 control-label" > APELLIDO 2</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox runat="server" ID="ape2"  CssClass="form-control style-form solo-letras" placeholder="JUAN" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                                 <div class="form-group">
                                    <label class="col-sm-3 control-label" ><i class="fa fa-university"></i> CEDULA</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox Style="border-radius: 5px;" TextMode="Number" runat="server"  ID="ced" CssClass="form-control style-form " pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label" ><i class="fa fa-file-text-o"></i> MISIÓN</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox Style="border-radius: 5px;" runat="server"  TextMode="MultiLine" ID="MISION" CssClass="form-control no-resize style-form " pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label" ><i class="fa fa-file-text-o"></i> VISIÓN</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox Style="border-radius: 5px;" runat="server" TextMode="MultiLine" ID="VISION" CssClass="form-control no-resize style-form " pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label" ><i class="fa fa-map-marker"></i> DIRECCIÓN</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="Direc" runat="server" aria-describedby="addon-right addon-left" placeholder="CAQUETA-FLORENCIA-ATALAYA" CssClass="form-control style-form solo-letras"  pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                                  <div class="form-group">
                                    <label class="col-sm-3 control-label" ><i class="fa fa-phone"></i> NUMERO TELEFONICO</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="Celular"  runat="server"  TextMode="Number" placeholder="3144703595" CssClass="form-control style-form "></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label" ><i class="fa fa-phone"></i> FECHA DE NACIMIENTO</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="FechaN" runat="server" aria-describedby="addon-right addon-left" TextMode="Date" Text="dd-mm-aaaa" class="form-control"></asp:TextBox>
                                        <asp:TextBox ID="TextBox1"  runat="server"  TextMode="Number" placeholder="3144703595" CssClass="form-control style-form "></asp:TextBox>
                                    </div>
                                    <!--estoy cudrando los id para cada texbx--->
                                </div>
                                 <div class="form-group">
                                    <label class="col-sm-3 control-label" ><i class="fa fa-phone"></i> NUMERO TELEFONICO</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="TextBox2"  runat="server"  TextMode="Number" placeholder="3144703595" CssClass="form-control style-form "></asp:TextBox>
                                    </div>
                                </div>
                                 <div class="form-group">
                                    <label class="col-sm-3 control-label" ><i class="fa fa-phone"></i> NUMERO TELEFONICO</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="TextBox3"  runat="server"  TextMode="Number" placeholder="3144703595" CssClass="form-control style-form "></asp:TextBox>
                                    </div>
                                      <div class="form-group">
                                    <label class="col-sm-3 control-label" ><i class="fa fa-phone"></i> NUMERO TELEFONICO</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="TextBox4"  runat="server"  TextMode="Number" placeholder="3144703595" CssClass="form-control style-form "></asp:TextBox>
                                    </div>
                                </div>
                                </div>
                                  <div class="form-group">
                                    <label class="col-sm-3 control-label" ><i class="fa fa-envelope"></i> CORREO ELECTRONICO</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox Style="border-radius: 5px;" runat="server"  ID="CORREO" CssClass="form-control style-form solo-letras" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                              
                                <div class="form-group">
                                    <label class="col-sm-3 control-label" ><i class="fa fa-user"></i> NOMBRE DEL EMPRESARIO</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox Style="border-radius: 5px;" runat="server"  ID="DUEÑO" CssClass="form-control style-form solo-letras" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                                 <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10 text-right">
                                        <asp:LinkButton ID="Btn_Actualizar" runat="server" CssClass="btn btn-primary"><i class="fa fa-pencil"></i>&nbsp Actualizar</asp:LinkButton>
                                        <span class="btn btn-primary" id="Btn_Activar_Form" style="display:none;"><i class="fa fa-pencil"></i>&nbsp Actualizar datos</span>
                                        <a href="Modi_empresa.aspx" class="btn btn-danger" id="Btn_Cancelar"><i class="fa fa-remove"></i>&nbsp Cancelar</a>
                                    </div>
                                 </div>
                            </div>
                        </div>

                        <div class="tab-pane" id="Act_Logo">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label for="inputName" class="col-sm-2 control-label">LOGO DE SU EMPRESA</label>

                                    <div class="col-sm-8">
                                        <asp:Image runat="server" ID="IMG_EMPRESA2" ImageUrl="~/Multimedia/Imagenes/Logo sin fondo.png" ImageAlign="Middle" Width="200" Height="100" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label style="text-align:center;" class="col-sm-2" for="exampleInputFile">File input</label>
                                    <div class="col-sm-10">
                                    <input type="file" id="exampleInputFile">
                                    <p class="help-block">Formato de la imagen permitido .png "sin fondo"</p>
                                    </div>
                                </div>
                                 <div class="form-group">
                                 <asp:LinkButton  runat="server" ID="save_imagen" CssClass="col-sm-offset-2 col-sm-2 btn btn-success" Text="ACTUALIZAR"></asp:LinkButton> 
                                 </div>
                            </div>
                        </div>
                        <!-- /.tab-pane -->
                    </div>
                    <!-- /.tab-content -->
                </div>
                <!-- /.nav-tabs-custom -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
                      <%--  <div class="card-body">
                            <%--<form>--%
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
                                        <asp:TextBox ID="ced" required runat="server" aria-describedby="addon-right addon-left" TextMode="Number" type="number" placeholder="1117552597" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label runat="server">DIRECCIÓN</asp:Label>
                                        <asp:TextBox ID="Direc" runat="server" aria-describedby="addon-right addon-left" type="text" placeholder="CAQUETA-FLORENCIA-ATALAYA" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label runat="server">CELULAR</asp:Label>
                                        <asp:TextBox ID="Celular" required runat="server" aria-describedby="addon-right addon-left" TextMode="Number" placeholder="3144703595" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label runat="server">FECHA NACIMIENTO </asp:Label>
                                        <asp:TextBox ID="FechaN" runat="server" aria-describedby="addon-right addon-left" TextMode="Date" Text="dd-mm-aaaa" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label runat="server">CORREO</asp:Label>
                                        <asp:TextBox ID="correo" required runat="server" aria-describedby="addon-right addon-left" TextMode="email" placeholder="@" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <asp:Label runat="server">CONTRASEÑA</asp:Label>
                                        <asp:TextBox ID="contrasena" required runat="server" aria-describedby="addon-right addon-left" TextMode="password" placeholder="*****" class="form-control"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-2">
                                    <div class="form-group">
                                        <asp:Label runat="server">SEXO </asp:Label>

                                        <asp:DropDownList ID="DDL_Sexo" CssClass="form-control" runat="server" BackColor="White">
                                            <asp:ListItem Value="M" Text="Masculino"></asp:ListItem>
                                            <asp:ListItem Value="F" Text="Femenino"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="col-md-12" runat="server">
                                    <div class="form-group">
                                        <asp:Label runat="server">DETALLES</asp:Label>
                                        <asp:TextBox ID="Detalle" runat="server" Rows="5" placeholder="Aqui puedes escribir una breve descripció" class="form-control border-input" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="row" runat="server">
                                <div class="col-sm-offset-2 col-sm-10 text-right">
                                    <asp:LinkButton ID="Btn_Guardar" runat="server" CssClass="btn btn-primary" OnClick="Btn_Guardar_Click"><i class="fa fa-save"></i>&nbsp Guardar datos</asp:LinkButton>
                                    <a href="ingresar_proveedor.aspx" class="btn btn-danger" id="Btn_Cancelar"><i class="fa fa-remove"></i>&nbsp Cancelar</a>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%-- <br />
        <br />
    </form>--%>
</asp:Content>
