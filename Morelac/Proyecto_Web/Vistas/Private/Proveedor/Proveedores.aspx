<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Home/Admin.Master" AutoEventWireup="true" CodeBehind="Proveedores.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.Proveedor.Proveedores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content-header">
        <h1><i class="fa fa-hand-o-right"></i><b> PROVEEDORES</b></h1>
        <small>De morelac</small>
        <ol class="breadcrumb">
            <li><a href="/Vistas/Private/Home/index_admin.aspx"><i class="fa fa-dashboard"></i>Inicio</a></li>
            <li class="active"><a href="Proveedores.aspx"><i class="fa fa-street-view"></i><b>Proveedores</b></a></li>
        </ol>
    </section>
    <div class="col-xs-12">
        <div class="col-xs-10">
    <a style="text-align: center; border-radius: 100%; background-color: transparent;"  class="btn btn-info btn-sm" title="MODIFICAR"><i style="color: blue;" class="fa fa-eye"></i> </a><b> OPCIÓN PARA MODIFICAR</b>
    <a style="text-align: center; border-radius: 50%; background-color: transparent;" class="btn btn-success btn-sm" title="CAMBIAR ESTADO"><i style="color: green;" class="fa fa-circle-o-notch"></i></a><b>  OPCIÓN DE CAMBIAR ESTADO A ACTIVO</b>
    <a style="text-align: center; border-radius: 50%; background-color: transparent;" class="btn btn-danger btn-sm" title="CAMBIAR ESTADO"><i style="color: maroon;" class="fa fa-circle-o-notch"></i></a><b>  OPCIÓN DE CAMBIAR ESTADO A INACTIVO</b>
           </div>                            
    <div class="col-xs-2">
        <div style="padding-bottom: 7px;" class="col-xs-12 text-right"><a href="ingresar_proveedor.aspx" class="btn btn-success">Registrar nuevo</a></div>
    </div>
</div>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Visualización de los proveedores del sistema</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body table-responsive">
                        <asp:Repeater ID="Rep_Proveedores" runat="server">
                            <HeaderTemplate>
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>NOMBRE</th>
                                            <th>IDENTIFICACÓN</th>
                                            <th>FINCA</th>
                                            <th>ESTADO</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td><%#Eval("NOMBRE")%></td>
                                    <td><%#Eval("ID")%></td>
                                    <td><%#Eval("FIN_NOMBRE")%></td>
                                    <td><%#Eval("ESTADO")%></td>
                                    <td style="text-align: center;">
                                        <div class="form-group">
                                            <a style="text-align: center; border-radius: 100%; background-color: transparent;" href="Previsualizacion_Proveedor.aspx?Valor=<%#Eval("ID")%>" class="btn btn-info btn-sm" title="MODIFICAR"><i style="color: cornflowerblue;" class="fa fa-eye"></i></a>
                                           <asp:LinkButton ID="Modi_Estado" runat="server" style="text-align: center; border-radius: 50%; background-color: transparent;" CssClass="btn btn-success btn-sm" title="CAMBIAR ESTADO" OnCommand="Modi_Estado_Command" CommandArgument='<%#Eval("ID")%>'><i style="color: green;" class="fa fa-circle-o-notch"></i></asp:LinkButton>
                                           <asp:LinkButton ID="Esta_Rojo" runat="server" style="text-align: center; border-radius: 50%; background-color: transparent;" CssClass="btn btn-danger btn-sm" title="CAMBIAR ESTADO" OnCommand="Esta_Rojo_Command" CommandArgument='<%#Eval("ID")%>'><i style="color: maroon;" class="fa fa-circle-o-notch"></i></asp:LinkButton>
                                           
                                            <%--<a style="text-align: center; border-radius: 50%; background-color: transparent;" href="Previsualizacion_Proveedor.aspx?Valor=<%#Eval("ID")%>" class="btn btn-success btn-sm" title="CAMBIAR ESTADO"><%--<i style="color: green;" class="fa fa-circle-o-notch"></i>--%</a>--%>
                                        </div>
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <FooterTemplate>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>NOMBRE</th>
                                        <th>IDENTIFICACÓN</th>
                                        <th>FINCA</th>
                                        <th>ESTADO</th>
                                        <th></th>
                                    </tr>
                                </tfoot>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsEndPage" runat="server">

    <script>
        $(function () {
            $('#example1').DataTable()
            $('#example2').DataTable({
                'paging': true,
                'lengthChange': true,
                'searching': true,
                'ordering': true,
                'info': true,
                'autoWidth': false
            })
        })
    </script>

</asp:Content>
