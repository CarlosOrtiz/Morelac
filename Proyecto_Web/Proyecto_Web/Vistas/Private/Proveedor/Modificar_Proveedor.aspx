<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Home/Admin.Master" AutoEventWireup="true" CodeBehind="Modificar_Proveedor.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.Proveedor.Modificar_Proveedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="content-header height-title">
        <h3 class="margin-top-5"><i class="fa fa-folder-open"></i>&nbsp Información de proveedor</h3>
    </section>
    <section class="content">
        <div class="row box box-primary no-margin">
            <div class="col-md-6 no-padding">
                <div class="box no-border no-shadow">
                    <div class="box-header">
                        <h3 class="box-title text-bold">Datos</h3>
                    </div>
                    <div class="box-body">
                        <div class="form-group col-md-12 no-padding">
                            <span class="col-lg-2 control-label text-bold no-padding">Agregar imagen</span>
                            <div class="input-group col-lg-10 no-padding">
                                <span class="input-group-btn">
                                    <span class="btn btn-default btn-file">Seleccione…
                                 <asp:FileUpload ID="FU_Imagen" runat="server" accept="image/*" />
                                    </span>
                                </span>
                                <input type="text" class="form-control" id="textIMG" readonly>
                                <span class="input-group-btn">
                                    <button type="button" class="btn btn-default"><i class="fa fa-remove"></i></button>
                                </span>
                            </div>
                        </div>
                        <div class="col-sm-6" id="div-img">
                             <asp:Image ID="Img_FileUpload" runat="server" Width="100%"/>
                        </div>
                        <div class="form-group col-md-12 no-padding">
                            <div class="text-center">
                                <asp:Image ID="Img_Persona" runat="server" Width="35%" CssClass="img-thumbnail rounded" />
                            </div>
                        </div>
                         <div class="form-group col-md-12 no-padding">
                            <span class="col-md-2 control-label text-bold no-padding">Nombre</span>
                            <div class="col-lg-10 no-padding">
                                <asp:TextBox ID="TB_Nombre" runat="server" CssClass="form-control" required MaxLength="100"
                                    placeholder="Ingrese su nombre..."></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group col-md-12 no-padding">
                            <span class="col-md-2 control-label text-bold no-padding">Cédula</span>
                            <div class="col-lg-10 no-padding">
                                <asp:TextBox ID="TB_CEDULA" runat="server" CssClass="form-control" TextMode="Number" required MaxLength="10"
                                    placeholder="Ingrese su cédula..."></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group col-md-12 no-padding">
                            <span class="col-md-2 control-label text-bold no-padding">No Teléfonico</span>
                            <div class="col-lg-10 no-padding">
                                <asp:TextBox ID="TB_Telefono" runat="server" CssClass="form-control" TextMode="Number" required MaxLength="10"
                                    placeholder="Ingrese su número teléfonico..."></asp:TextBox>
                            </div>
                        </div>
                 <div class="form-group col-md-12 no-padding">
                            <span class="col-md-2 control-label text-bold no-padding">Dirección</span>
                            <div class="col-lg-10 no-padding">
                                <asp:TextBox ID="TB_Direccion" runat="server" CssClass="form-control" required MaxLength="45"
                                    placeholder="Ingrese la dirección..."></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 no-padding">
                <div class="box no-border no-shadow">
                    <div class="box-header">
                    </div>
                    <div class="box-header">
                       
                           <div class="form-group col-md-12 no-padding">
                            <span class="col-md-2 control-label text-bold no-padding">Nombre de la finca</span>
                            <div class="col-lg-10 no-padding">
                                <asp:TextBox ID="TB_Finca"  runat="server" CssClass="form-control" required MaxLength="45"
                                    placeholder="Ingrese el nombre de su finca..."></asp:TextBox>
                            </div>
                        </div>
                              <div class="form-group col-md-12 no-padding">
                            <span class="col-md-2 control-label text-bold no-padding">Cantidad de leche que ingreso a la empresa</span>
                            <div class="col-lg-10 no-padding">
                                <asp:TextBox ID="Tb_Cant_leche" TextMode="Number" runat="server" CssClass="form-control" required MaxLength="45"
                                    placeholder="Ingrese la dirección..."></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group col-md-12 no-padding">
                            <span class="col-md-2 control-label text-bold no-padding">Fecha que entrego la leche a la empresa</span>
                            <div class="col-lg-10 no-padding">
                                <asp:TextBox ID="TB_Fecha_En" TextMode="DateTime" runat="server" CssClass="form-control" required MaxLength="45"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group col-md-12 no-padding">
                                    <label class="col-md-2 control-label text-bold no-padding">Estado</label>
                                    <div class="col-sm-10">
                                        <asp:DropDownList ID=Drop_Estado style="width:200px;"  CssClass="form-control select2" AppendDataBoundItems="true" runat="server" BackColor="White">
                                           <asp:ListItem Value="ACTIVO" Text="Activo"></asp:ListItem>
                                            <asp:ListItem Value="INACTIVO" Text="Inactivo"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                       </div>
                            <div class="form-group col-md-12 no-padding">
                            <span class="col-md-2 control-label text-bold no-padding">Descripción</span>
                            <div class="col-lg-10 no-padding">
                                <asp:TextBox ID="TB_Descri" TextMode="DateTime" runat="server" CssClass="form-control" required MaxLength="225"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group col-md-12 no-padding">
                            <p><b>Estado:</b>&nbsp<asp:Label ID="Estado" runat="server"></asp:Label></p>
                            <p align="justify"><b>Descripción:&nbsp</b><asp:Label ID="Descripcion" runat="server"></asp:Label></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="box-footer text-right">
                <a href="Modificar_Proveedor.aspx?Valor=<%=Convert.ToString(Request.QueryString["Valor"])%>" class="btn btn-primary"><i class="fa fa-pencil"></i>&nbsp Modificar</a>
            </div>
            </div>
        
    </section>
    <div class="clearfix"></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsEndPage" runat="server">
</asp:Content>
