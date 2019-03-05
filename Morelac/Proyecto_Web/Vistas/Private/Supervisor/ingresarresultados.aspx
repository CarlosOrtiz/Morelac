<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Home/Admin.Master" AutoEventWireup="true" CodeBehind="ingresarresultados.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.ingresarresultados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="content-header">
        <h1><i class="fa fa-hand-o-right"></i><b>REGISTRAR UNA NUEVA PRUEBA</b></h1>
        <small>De morelac</small>
        <ol class="breadcrumb">
            <li><a href="/Vistas/Private/Home/index_admin.aspx"><i class="fa fa-dashboard"></i>Inicio</a></li>
            <li><a href="/Vistas/Private/Proveedor/Proveedores.aspx"><i class="fa fa-street-view"></i>Proveedores</a></li>
            <li class="active"><a href="/Vistas/Private/Supervisor/ingresarresultados.aspx"><i class="fa fa-street-view"></i><b>Registrar pruebss</b></a></li>
        </ol>
    </section>
    <br />
    <div class="row">
        <div class="col-md-12">
            <!-- DIRECT CHAT WARNING -->
            <div class="box box-warning collapsed-box direct-chat direct-chat-warning">
                <div class="box-header with-border">
                    <h3 class="box-title"><b>TEMPERATURA</b></h3>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse">
                            <i class="fa fa-plus"></i>
                        </button>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body" style="">
                    <fieldset>
                        <legend style="text-align: center;" class="legend1">Diligenciar Datos</legend>

                        <div class="col-md-12">
                         <h3 >Temperatura: </h3>
                            <asp:TextBox  style="width=50%;" runat="server" ID="Temperatura" required CssClass="form-control style-form col-md-4" autocomplete="off" placeholder="5" MaxLength="10" onkeyDown="checkTextAreaMaxLength(this,event,'10');" oncopy="return false" onpaste="return false" oncut="return false" ></asp:TextBox>
                             °C
                        </div>
                    </fieldset>
                </div>
                <!-- /.box-body -->
                <div class="box-footer" style="text-align: center;">
                    <input style="margin: 0% 0% 1% 0%;" class="btn btn-theme02" type="submit" value="Guardar">
                </div>
                <!-- /.box-footer-->
            </div>
            <!--/.direct-chat -->
        </div>
        <!-- /.col -->

    </div>
    <div class="row">
        <div class="col-md-12">
            <!-- DIRECT CHAT WARNING -->
            <div class="box box-warning collapsed-box direct-chat direct-chat-warning">
                <div class="box-header with-border">
                    <h3 class="box-title"><b>CARACTERISTICAS LACTOFILTRACIÓN</b></h3>

                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse">
                            <i class="fa fa-plus"></i>
                        </button>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body" style="">
                    <fieldset>
                        <legend style="text-align: center;" class="legend1">Diligenciar Datos</legend>

                        <div class="col-md-6">

                            <b>CARACTERISTICAS LACTOFILTRACIÓN:</b>

                            <p></p>
                            Peso Especifico:
                    <input class="PesoE" name='pesoE' type="number" required>
                            °Q (Grados Quevenne)
            <p></p>

                            Acidez Titulable:
                    <input class="Acidez" name='Acidez' type="number" required>
                            ml
            <p></p>
                            pH:
                    <input class="ph" name='ph' type="number" required>
                            mL
            <p></p>

                            Prueba del Alcohol:
                    <input class="Pr_Alcohol" name='pralcohol' type="number" required>
                            mL
            <p></p>
                            <!--</div>-->
                            <!--   <div " class="col-lg-6"> -->
                            Reducción del Azul de Metileno:
                    <select class="Red_Azul_Metileno" required>
                        <option value="value0" selected>Selecionar</option>
                        <option value="value1">Buena a exelente</option>
                        <option value="value2">Regular a buena</option>
                        <option value="value3">Aceptable</option>
                        <option value="value4">Mala</option>
                    </select>
                            <!--Mala: Menos de 2 horas    
                Aceptable: 2 - 6 horas
                Regular a buena: 6 - 8 horas    
                Buena a exelente: más de 8 horas  

                Numero estimado de bacterias por ml 
                Mala: 2 a 10 millones
                Regular a buena: 200.000 a 2.000.000 
                Buena a exelente:   100.000 a 200.000
                -->
                            <p></p>

                            Tiempo de Reducción de la Resazuina:
                    <select class="Red_Resazuina" required>
                        <option value="value0" selected>Selecionar</option>
                        <option value="value1">Buena a exelente</option>
                        <option value="value2">Regular a buena</option>
                        <option value="value3">Aceptable</option>
                        <option value="value4">Mala</option>
                    </select>
                            <p></p>
                            Prueba de Féculas:
                    <input class="Pr_feculas" name='textu' type="text" placeholder="Viscosidad de 1,6"
                        required>
                            <p></p>

                            Prueba de Antibióticos:
                    <input class="Pr_Anti" name='textu' type="text" placeholder="Viscosidad de 1,6"
                        required>
                            <p></p>


                        </div>

                        <div class="col-md-6">
                            Agua:
                    <input class="agua" name='textu' type="number" required />
                            gr
            <p></p>
                            Energía:
                    <input class="agua" name='textu' type="number" required />
                            kcal
            <p></p>
                            Proteína:
                    <input class="agua" name='textu' type="number" required />
                            gr
            <p></p>
                            Grasas:
                    <input class="Grasas" name='textu' type="text" placeholder="Viscosidad de 1,6"
                        required>
                            gr
            <p></p>
                            Lactosa:
                    <input class="agua" name='textu' type="number" required>
                            gr
            <p></p>
                            Minerales:
                    <input class="agua" name='textu' type="number" required>
                            gr
            <p></p>
                            Colesterol:
                    <input class="coles" name='textu' type="text" placeholder="Viscosidad de 1,6"
                        required>
                            gr
            <p></p>
                            Fecha de la prueba:
                <input class="coles" name='textu' type="date" required />
                            <!--             <script>
		var f = new Date();
          document.write(f.getDate() + "/" + (f.getMonth() + 1) + "/" + f.getFullYear());
                 
	</script> -->
                    </fieldset>
                </div>
                <!-- /.box-body -->
                <div class="box-footer" style="text-align: center;">
                    <input style="margin: 0% 0% 1% 0%;" class="btn btn-theme02" type="submit" value="Guardar">
                </div>
                <!-- /.box-footer-->
            </div>
            <!--/.direct-chat -->
        </div>
        <!-- /.col -->

    </div>
    <div class="row">
        <div class="col-md-12">
            <!-- DIRECT CHAT WARNING -->
            <div class="box box-warning  collapsed-box direct-chat direct-chat-warning">
                <div class="box-header with-border">
                    <h3 class="box-title"><b>CARACTERISTICAS ORGANOLÉPTICOS</b></h3>

                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse">
                            <i class="fa fa-plus"></i>
                        </button>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body" style="">
                    <fieldset>
                        <legend style="text-align: center;" class="legend1">Diligenciar Datos</legend>

                        <div class="col-md-6">
                            <b>CARACTERISTICAS ORGANOLÉPTICOS:</b>
                            <p></p>
                            Textura:
                    <input class="Textura" name='textu' type="text" placeholder="Viscosidad de 1,6"
                        required>
                            <p></p>

                            Color:
                     <select class="Color" required>
                         <option value="value0" selected>Selecionar</option>
                         <option value="value1">Blanco</option>
                         <option value="value2">Blanco Con Tinte Azulado</option>
                         <option value="value3">Gris Amarillento</option>
                         <option value="value4">Rosado</option>
                         <option value="value5">Otros Colores</option>
                     </select>
                            <p></p>
                            Sabor:
                    <select class="Sabor" required>
                        <option value="value0" selected>Selecionar</option>
                        <option value="value1">Exelente</option>
                        <option value="value2">Buena</option>
                        <option value="value3">Regular</option>
                        <option value="value4">Pobre</option>
                        <option value="value5">Insulubre</option>
                    </select>

                            <p></p>

                            Olor:
                   <select class="Olor" required>
                       <option value="value0" selected>Selecionar</option>
                       <option value="value1">Caracteristico</option>
                       <option value="value2">Otro</option>
                   </select>
                            <br />

                        </div>



                    </fieldset>
                </div>
                <!-- /.box-body -->
                <div class="box-footer" style="text-align: center;">
                    <input style="margin: 0% 0% 1% 0%;" class="btn btn-theme02" type="submit" value="Guardar">
                </div>
                <!-- /.box-footer-->
            </div>
            <!--/.direct-chat -->
        </div>
        <!-- /.col -->

    </div>
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-3"></div>
        <div class="col-md-3">
            <div class="box box-success">
                <div class="box-header with-border">
                    <h3 class="box-title"><b>GUARDAR PRUEBA</b></h3>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="collapse">
                            <i class="fa fa-minus"></i>
                        </button>
                    </div>
                </div>
                <div class="box-body" style="text-align: center;">
                    <asp:LinkButton Style="margin: 0% 0% 1% 0%;" runat="server" ID="Btn_Save_Prueba" CssClass="btn btn-success"><i class="fa fa-save"></i> Guardar Prueba</asp:LinkButton>
                </div>
                <!-- /.box-body -->
                <!-- Loading (remove the following to stop the loading)-->
                <%-- <div class="overlay">
              <i class="fa fa-refresh fa-spin"></i>
            </div>--%>
                <!-- end loading -->
            </div>
            <!-- /.box -->
        </div>
        <div class="col-md-3"></div>
        <div class="col-md-1"></div>
    </div>
</asp:Content>
