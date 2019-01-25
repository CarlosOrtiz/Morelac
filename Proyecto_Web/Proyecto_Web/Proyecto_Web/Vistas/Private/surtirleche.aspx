<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/supervisor.Master" AutoEventWireup="true" CodeBehind="surtirleche.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.surtirleche" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <h3><i class="fa fa-angle-right"></i>LECHE SUMINISTRADA POR PROVEEDORES</h3>

    <div class="row mt">
        <div class="col-md-12">
            <div class="content-panel">
                <h4><i class="fa fa-angle-right"></i>BUSCAR PROVEEDOR:
                    <br />
                    <label>Por Cédula:<input type="number" aria-controls="hidden-table-info" /></label>
                    <label>Por Nombre:<input type="text" aria-controls="hidden-table-info" /></label></h4>

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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <legend style="text-align: center;" class="legend1">
            <br />
            "A-B-C-D-E-F-G-H-I-J-K-L-M-N-Ñ-O-P-Q-R-S-T-U-V-W-Y-X-Z"</legend>
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
    <div class="col-xs-12 col-md-8">
    <div  class="form-group">
                  <label style="font-size:15px" class="control-label col-md-3">La fecha de entrega:</label>
                  <div class="col-md-3 col-xs-11">
                    <div data-date-viewmode="years" data-date-format="dd-mm-yyyy" data-date="01-01-2014" class="input-append date dpYears">
                      <input type="text" readonly="" value="01-01-2014" size="26" class="form-control"/>
                      <span class="input-group-btn add-on">
                        <button class="btn btn-theme" type="button"><i class="fa fa-calendar"></i></button>
                        </span>
                    </div>
                    <span class="help-block">Seleccionar Fecha</span>
                  </div>
                </div>
        </div>
     <div class="col-md-4"> 
     <button type="button" class="btn btn-theme02"><i class="fa fa-save"></i> Guardar</button>
           </div>
    
    <div class="col-md-12" Style="font-size:15px">
        <label class="col-md-2">Cantidad de leche ingresada a la empresa:</label>
     <!-- <input name="CantidadLeche" type="number" />-->
  <asp:textbox runat="server" aria-describedby="addon-right addon-left" id="ID_RESULTADOS_PRUEBAS" type="number" placeholder="CANTIDAD DE LA LECHE"    class="form-control" pattern="[A-Za-z]+"></asp:textbox>
          
     
    </div>
    
   

</asp:Content>