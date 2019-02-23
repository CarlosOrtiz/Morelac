<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Home/Admin.Master" AutoEventWireup="true" CodeBehind="modi_empresa.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.modi_empresa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <section class="content-header">
        <h3 style="margin-top: 5px"><i class="fa fa-hand-o-right"></i>INFORMACIÓN DE SU EMPRESA</h3>
    </section>
    <section class="content">

        <div class="row">
            <div class="col-md-3">

                <!-- About Me Box -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">PERFIL DE MORELAC</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <strong><i class="fa fa-book margin-r-5"></i>MORELACT</strong>
                        <p style="text-align: center;" class="text-muted col-md-12">
                            <asp:Image runat="server" ID="IMG_EMPRESAS" ImageUrl="~/Multimedia/Imagenes/Logo sin fondo.png" Width="150" />
                        </p>

                        <hr>

                        <strong><i class="fa fa-file-text-o margin-r-5"></i>Misión</strong>

                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam fermentum enim neque.</p>
                        <hr>

                        <strong><i class="fa fa-file-text-o margin-r-5"></i>Visión</strong>

                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam fermentum enim neque.</p>
                        <hr>

                        <strong><i class="fa fa-map-marker margin-r-5"></i>Dirección</strong>

                        <p class="text-muted">Malibu, California</p>

                        <hr>

                        <strong><i class="fa fa-pencil margin-r-5"></i>Contacto</strong>

                        <p>
                            <span style="cursor: pointer;" class="label label-danger">Correo Electrónico</span>
                            <span style="cursor: pointer;" class="label label-success">Numero Teléfonico</span>
                        </p>

                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#Modificar" data-toggle="tab">Actualizar Información</a></li>
                        <li><a href="#Act_Logo" data-toggle="tab">Actualizar Logo</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="active tab-pane" id="Modificar">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="inputSuccess"><i class="fa fa-building"></i>NOMBRE DE SU EMPRESA</label>
                                    <div class="col-sm-10">
                                        <asp:TextBox Style="border-radius: 5px;" runat="server" disabled="" ID="TextBox1" CssClass="form-control" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane" id="Act_Logo">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label for="inputName" class="col-sm-2 control-label">Name</label>

                                    <div class="col-sm-8">
                                        <input type="email" class="form-control" id="inputName" placeholder="Name">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail" class="col-sm-2 control-label">Email</label>

                                    <div class="col-sm-10">
                                        <input type="email" class="form-control" id="inputEmail" placeholder="Email">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputName" class="col-sm-2 control-label">Name</label>

                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputName" placeholder="Name">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputExperience" class="col-sm-2 control-label">Experience</label>

                                    <div class="col-sm-10">
                                        <textarea class="form-control" id="inputExperience" placeholder="Experience"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputSkills" class="col-sm-2 control-label">Skills</label>

                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputSkills" placeholder="Skills">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox">
                                                I agree to the <a href="#">terms and conditions</a>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-danger">Submit</button>
                                    </div>
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

    </section>

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
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label" for="validationCustom01">
                                            NOMBRE EMPRESA
                                        </label>
                                        <!---->
                                        <asp:TextBox runat="server" aria-describedby="addon-right addon-left" ID="empresa" type="text" placeholder="EMPRESA" class="form-control" pattern="[A-Za-z]+"></asp:TextBox>
                                        <!---->
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label">
                                            NIT
                                        </label>
                                        <!---->
                                        <asp:TextBox runat="server" aria-describedby="addon-right addon-left" type="number" ID="iden" placeholder="800123456" class="form-control"></asp:TextBox>
                                        <!---->
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label">
                                            DIRECCION
                                        </label>
                                        <!---->
                                        <asp:TextBox runat="server" aria-describedby="addon-right addon-left" type="text" ID="direc" placeholder="UBICACION" class="form-control"></asp:TextBox>
                                        <!---->
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label">
                                            EMAIL
                                        </label>
                                        <!---->
                                        <asp:TextBox runat="server" aria-describedby="addon-right addon-left" ID="corre" type="email" placeholder="Email" class="form-control"></asp:TextBox>
                                        <!---->
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label">
                                            TELEFONO
                                        </label>
                                        <!---->
                                        <asp:TextBox runat="server" aria-describedby="addon-right addon-left" type="number" placeholder="3147258369" ID="telefo" class="form-control"></asp:TextBox>
                                        <!---->
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label">
                                            DUEÑO
                                        </label>
                                        <!---->
                                        <asp:TextBox runat="server" aria-describedby="addon-right addon-left" type="text" placeholder="DUEÑO" ID="due" class="form-control"></asp:TextBox>
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
                                    <asp:Button ID="boton1" Text="" runat="server" class="btn btn-info btn-fill float-center" />
                                </div>
                                <div class="text-right">
                                    <asp:Button ID="boton" Text="MODIFICAR" runat="server" class="btn btn-info btn-fill float-center" />
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
