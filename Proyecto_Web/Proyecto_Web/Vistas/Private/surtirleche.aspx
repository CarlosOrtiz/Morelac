<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Admin.Master" AutoEventWireup="true" CodeBehind="surtirleche.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.surtirleche" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--<h3>LECHE SUMINISTRADA POR PROVEEDORES</h3>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row mt">
        <div class="col-md-12">
            <div class="content-panel">
                <h3>BUSCAR PROVEEDOR:</h3>
                <div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <asp:Label runat="server">BUSCAR POR CEDULA </asp:Label>
                            <asp:TextBox runat="server" ID="buscar" aria-describedby="addon-right addon-left" type="number" class="form-control" placeholder="123456789"></asp:TextBox>
                            <%--<asp:Button runat="server" Text="BUSCAR" type="submit" ID="buscarproveedor" OnClick="Consultar" class="btn btn-info btn-fill float-right" />--%>
                        </div>
                    </div>
                </div>
                <div class="form-group" align="center">
                    <h5 class="card-title">POR CEDULA <asp:TextBox runat="server" type="number" aria-controls="hidden-table-info" /></h5>
                    <label>Por Nombre:<input type="text" aria-controls="hidden-table-info" /></label>
                    </div>
                <table class="table table-striped table-advance table-hover">
                    <thead>
                        <tr>
                            <th><i class="fa fa-user"></i>Nombre del proveedor</th>
                            <th class="hidden-phone"><i class="fa fa-search"></i>Cédula</th>
                            <th><i class=" fa fa-calendar"></i>Fecha</th>
                            <!--<th><i class="fa fa-bookmark"></i></th>-->
                            <th><i class="fa fa-star"></i>Acción</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <a href="basic_table.html#">Carlos Alberto Ortiz Losada</a>
                            </td>
                            <td class="hidden-phone">1117552597</td>
                            <td>12-11-2015</td>
                            <!--   <td><span class="label label-info label-mini">Due</span></td>-->
                            <td>
                                <button class="btn btn-success btn-xs"><i class="fa fa-check"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="basic_table.html#">Carlos Alberto Ortiz Losada</a>
                            </td>
                            <td class="hidden-phone">1117552597</td>
                            <td>17-01-2015</td>
                            <!--    <td><span class="label label-warning label-mini">Due</span></td>-->
                            <td>
                                <button class="btn btn-success btn-xs"><i class="fa fa-check"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="basic_table.html#">Another Co
                                </a>
                            </td>
                            <td class="hidden-phone">Lorem Ipsum dolor</td>
                            <td>14400.00$ </td>
                            <!--     <td><span class="label label-success label-mini">Paid</span></td>-->
                            <td>
                                <button class="btn btn-success btn-xs"><i class="fa fa-check"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="basic_table.html#">Dashio ext</a>
                            </td>
                            <td class="hidden-phone">Lorem Ipsum dolor</td>
                            <td>22000.50$ </td>
                            <!--      <td><span class="label label-success label-mini">Paid</span></td>-->
                            <td>
                                <button class="btn btn-success btn-xs"><i class="fa fa-check"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="basic_table.html#">Total Ltd</a>
                            </td>
                            <td class="hidden-phone">Lorem Ipsum dolor</td>
                            <td>12120.00$ </td>
                            <!--     <td><span class="label label-warning label-mini">Due</span></td>-->
                            <td>
                                <button class="btn btn-success btn-xs"><i class="fa fa-check"></i></button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- /content-panel -->
        </div>
        <!-- /col-md-12 -->
    </div>
    <div class="card-body">
        

        <div class="row">
            <div class="col-md-2">
                <div class="form-group">
                    <asp:Label runat="server">FECHA ENTREGA </asp:Label>
                    <asp:TextBox ID="entregaleche" runat="server" required aria-describedby="addon-right addon-left" TextMode="Date" Text="dd-mm-aaaa" class="form-control"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <asp:Label runat="server">CANTIDAD DE LECHE</asp:Label>
                <asp:TextBox ID="cantleche" runat="server" required aria-describedby="addon-right addon-left" TextMode="Number" placeholder="1" class="form-control"></asp:TextBox>
            </div>
        </div>
    </div>
        <%-- <legend style="text-align: center;" class="legend1">
        <br />
        "A-B-C-D-E-F-G-H-I-J-K-L-M-N-Ñ-O-P-Q-R-S-T-U-V-W-Y-X-Z"</legend>--%>
    <!--   <div class="dataTables_filter" id="hidden-table-info_filter">
        <label style="margin: 1% 1% 1% 40%;">
            Buscar Proveedor:
            <input type="text" aria-controls="hidden-table-info"></label>
    </div>
    <div class="darkblue-panel pn">
        <div class="darkblue-header">
            <h5>DATOS DEL PROVEEDOR</h5>
        </div>
        <!--<h1 class="mt"><i class="fa fa-user fa-3x"></i></h1>
        <p >CANTIDAD DE LECHE:</p>
            <footer>
            <div class="centered">
             <input type="text"  name="Cantidadleche" placeholder="Cantidad de leche" />
            </div>
        </footer>
       
    </div>   -->
    <%--<div class="col-xs-12 col-md-8">--%>
        <%--<div class="form-group">
           <%-- <label style="font-size: 15px" class="control-label col-md-3">La fecha de entrega:</label>

            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label runat="server">FECHA ENTREGA </asp:Label>
                    <asp:TextBox ID="nacimiento" runat="server" required aria-describedby="addon-right addon-left" TextMode="Date" Text="dd-mm-aaaa" class="form-control"></asp:TextBox>
                </div>
            </div>

            <%--<div class="col-md-3 col-xs-11">
                <div data-date-viewmode="years" data-date-format="dd-mm-yyyy" data-date="01-01-2014" class="input-append date dpYears">
                    <input type="text" readonly="" value="01-01-2014" size="26" class="form-control" />
                    <span class="input-group-btn add-on">
                        <button class="btn btn-theme" type="button"><i class="fa fa-calendar"></i></button>
                    </span>
                </div>
                <span class="help-block">Seleccionar Fecha</span>
            </div>--%>
        <%--</div>--%>
<%--    </div>--%>

    
</asp:Content>
