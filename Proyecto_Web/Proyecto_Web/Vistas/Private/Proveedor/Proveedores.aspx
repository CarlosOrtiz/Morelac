﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Home/Admin.Master" AutoEventWireup="true" CodeBehind="Proveedores.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.Proveedor.Proveedores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="content-header">
        <div class="col-xs-6">
            <h3 style="margin-top: 5px"><i class="fa fa-hand-o-right"></i>PROVEEDORES</h3>
        </div>
        <div class="col-xs-6 text-right"><a href="ingresar_proveedor.aspx" class="btn btn-success">Registrar nuevo</a></div>
    </section>
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
                                    <td style="text-align:center;">
                                           <a style="text-align:center;border-radius:50%;" href="Previsualizacion_Proveedor.aspx?Valor=<%#Eval("ID")%>"class="btn btn-success btn-sm"><i class="fa fa-eye"></i></a>
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