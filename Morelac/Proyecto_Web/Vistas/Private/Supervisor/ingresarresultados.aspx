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
                        <div class="form-horizontal">
                            <div class="form-group">
                                <div class="box-body">
                                    <label class="col-sm-5 control-label"><b style="font-size: 17px;">TEMPERATURA</b></label>
                                    <div style="padding-left: 2%; padding-right: 5%;" class="input-group col-sm-3">
                                        <asp:TextBox runat="server" ID="TB_Temperatura" MaxLength="10" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control style-form" TextMode="Number" placeholder="1 AL 5" required></asp:TextBox>
                                        <span class="input-group-addon">°C</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <!-- /.box-body -->
                <div class="box-footer" style="text-align: center;">
                    <%--<input style="margin: 0% 0% 1% 0%;" class="btn btn-theme02" type="submit" value="Guardar">--%>
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

                        <div class="form-horizontal col-lg-6">
                            <div class="form-group">
                                <div class="box-body">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">Peso Especifico</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-3">
                                        <asp:TextBox runat="server" ID="TextBox1" MaxLength="10" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control style-form" TextMode="Number" placeholder="15" required></asp:TextBox>
                                        <span class="input-group-addon">°Q</span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="box-body">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">Acidez Titulable</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-3">
                                        <asp:TextBox runat="server" ID="TextBox2" MaxLength="10" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control style-form" TextMode="Number" placeholder="5" required></asp:TextBox>
                                        <span class="input-group-addon">ml</span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="box-body">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">pH</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-3">
                                        <asp:TextBox runat="server" ID="TextBox3" MaxLength="10" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control style-form" TextMode="Number" placeholder="3" required></asp:TextBox>
                                        <span class="input-group-addon">ml</span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="box-body">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">Prueba del Alcohol</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-3">
                                        <asp:TextBox runat="server" ID="TextBox4" MaxLength="10" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control style-form" TextMode="Number" placeholder="11" required></asp:TextBox>
                                        <span class="input-group-addon">ml</span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="box-body">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">Reducción del Azul de Metileno</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-3">
                                        <asp:DropDownList ID="Drop_Reduccion" Style="width: 100%;" CssClass="form-control select2 select2-hidden-accessible style-form solo-letras" TabIndex="-1" aria-hidden="true" AppendDataBoundItems="true" runat="server" BackColor="White" required>
                                            <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                                            <asp:ListItem Value="1">Buena a exelente</asp:ListItem>
                                            <asp:ListItem Value="2">Regular a buena</asp:ListItem>
                                            <asp:ListItem Value="3">Aceptable</asp:ListItem>
                                            <asp:ListItem Value="4">Mala</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="box-body">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">Tiempo de Reducción de la Resazuina</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-3">
                                        <asp:DropDownList ID="Drop_Tiempo_Reduccion" Style="width: 100%;" CssClass="form-control select2 select2-hidden-accessible style-form solo-letras" TabIndex="-1" aria-hidden="true" AppendDataBoundItems="true" runat="server" BackColor="White" required>
                                            <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                                            <asp:ListItem Value="1">Buena a exelente</asp:ListItem>
                                            <asp:ListItem Value="2">Regular a buena</asp:ListItem>
                                            <asp:ListItem Value="3">Aceptable</asp:ListItem>
                                            <asp:ListItem Value="4">Mala</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                           
                           
                        </div>
                        <div class="form-horizontal col-lg-6">
                             <div class="form-group">
                                <div class="box-body">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">Prueba de Féculas</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-3">
                                        <asp:TextBox runat="server" ID="TextBox7" MaxLength="10" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control style-form" TextMode="Number" placeholder=" " required></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                             <div class="form-group">
                                <div class="box-body">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">Prueba de Antibióticos</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-3">
                                        <asp:TextBox runat="server" ID="TextBox8" MaxLength="10" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control style-form" TextMode="Number" placeholder=" " required></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="box-body">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">Agua</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-3">
                                        <asp:TextBox runat="server" ID="TextBox9" MaxLength="10" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control style-form" TextMode="Number" placeholder="1 AL 5" required></asp:TextBox>
                                        <span class="input-group-addon">ml</span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="box-body">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">Energía</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-3">
                                        <asp:TextBox runat="server" ID="TextBox10" MaxLength="10" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control style-form" TextMode="Number" placeholder="1 AL 5" required></asp:TextBox>
                                        <span class="input-group-addon">kcal</span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="box-body">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">Proteína</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-3">
                                        <asp:TextBox runat="server" ID="TextBox11" MaxLength="10" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control style-form" TextMode="Number" placeholder="1 AL 5" required></asp:TextBox>
                                        <span class="input-group-addon">gr</span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="box-body">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">Grasas</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-3">
                                        <asp:TextBox runat="server" ID="TextBox12" MaxLength="10" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control style-form" TextMode="Number" placeholder="1 AL 5" required></asp:TextBox>
                                        <span class="input-group-addon">gr</span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="box-body">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">Lactosa</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-3">
                                        <asp:TextBox runat="server" ID="TextBox13" MaxLength="10" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control style-form" TextMode="Number" placeholder="1 AL 5" required></asp:TextBox>
                                        <span class="input-group-addon">gr</span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="box-body">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">Minerales</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-3">
                                        <asp:TextBox runat="server" ID="TextBox14" MaxLength="10" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control style-form" TextMode="Number" placeholder="1 AL 5" required></asp:TextBox>
                                        <span class="input-group-addon">gr</span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="box-body">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">Colesterol</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-3">
                                        <asp:TextBox runat="server" ID="TextBox15" MaxLength="10" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control style-form" TextMode="Number" placeholder="1 AL 5" required></asp:TextBox>
                                        <span class="input-group-addon">gr</span>
                                    </div>
                                </div>
                            </div>



                        </div>


                        <%-- <div class="col-md-6">
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


                        </div>--%>

                        <%-- <div class="col-md-6">
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
                <input class="coles" name='textu' type="date" required />--%>
                        <!--             <script>
		var f = new Date();
          document.write(f.getDate() + "/" + (f.getMonth() + 1) + "/" + f.getFullYear());
                 
	</script> -->
                    </fieldset>
                </div>
                <!-- /.box-body -->
                <div class="box-footer" style="text-align: center;">
                    <%-- <input style="margin: 0% 0% 1% 0%;" class="btn btn-theme02" type="submit" value="Guardar">--%>
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
                        <div class="form-horizontal col-lg-6">
                            <div class="form-group">
                                <div class="box-body">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">Textura</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-3">
                                        <asp:TextBox runat="server" ID="TextBox5" MaxLength="10" onKeyPress="return soloNumeros(event)" onkeyDown="checkTextAreaMaxLength(this,event,'10');" CssClass="form-control style-form" TextMode="Number" placeholder="1,6" required></asp:TextBox>
                                        <span class="input-group-addon">Viscosidad</span>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="box-body">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">Color</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-3">
                                        <asp:DropDownList ID="Drop_Color" Style="width: 100%;" CssClass="form-control select2 select2-hidden-accessible style-form solo-letras" TabIndex="-1" aria-hidden="true" AppendDataBoundItems="true" runat="server" BackColor="White" required>
                                            <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                                            <asp:ListItem Value="1">Blanco</asp:ListItem>
                                            <asp:ListItem Value="2">Blanco Con Tinte Azulado</asp:ListItem>
                                            <asp:ListItem Value="3">Gris Amarillento</asp:ListItem>
                                            <asp:ListItem Value="4">Rosado</asp:ListItem>
                                            <asp:ListItem Value="5">Otros Colores</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-horizontal col-lg-6">
                            <div class="form-group">
                                <div class="box-body">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">Sabor</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-3">
                                        <asp:DropDownList ID="Drop_Sabor" Style="width: 100%;" CssClass="form-control select2 select2-hidden-accessible style-form solo-letras" TabIndex="-1" aria-hidden="true" AppendDataBoundItems="true" runat="server" BackColor="White" required>
                                            <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                                            <asp:ListItem Value="1">Exelente</asp:ListItem>
                                            <asp:ListItem Value="2">Buena</asp:ListItem>
                                            <asp:ListItem Value="3">Regular</asp:ListItem>
                                            <asp:ListItem Value="4">Pobre</asp:ListItem>
                                            <asp:ListItem Value="5">Insulubre</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="box-body">
                                    <label class="col-sm-3 control-label"><b style="font-size: 17px;">Olor</b></label>
                                    <div style="padding-left: 0%; padding-right: 0%;" class="input-group col-sm-3">
                                        <asp:DropDownList ID="Drop_Olor" Style="width: 100%;" CssClass="form-control select2 select2-hidden-accessible style-form solo-letras" TabIndex="-1" aria-hidden="true" AppendDataBoundItems="true" runat="server" BackColor="White" required>
                                            <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                                            <asp:ListItem Value="1">Caracteristico</asp:ListItem>
                                            <asp:ListItem Value="2">Otro</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--    <div class="col-md-6">
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

                        </div>--%>
                    </fieldset>
                </div>
                <!-- /.box-body -->
                <div class="box-footer" style="text-align: center;">
                    <%-- <input style="margin: 0% 0% 1% 0%;" class="btn btn-theme02" type="submit" value="Guardar">--%>
                </div>
                <!-- /.box-footer-->
            </div>
            <!--/.direct-chat -->
        </div>
        <!-- /.col -->

    </div>
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
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
                    <div class="col-md-6">
 <div class="form-group">
                        <div class="box-body">
                            <label class="control-label"><b style="font-size: 17px;text-align:center;">Fecha de la prueba:</b></label>
                            <div style="padding-left: 0%; padding-right: 0%;" class="input-group">
                                <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                <asp:TextBox runat="server" disabled ID="Fecha_Prueba" MaxLength="10" CssClass="form-control style-form" TextMode="DateTime" ></asp:TextBox>

                            </div>
                        </div>
                    </div>
                    </div>
                   <div class="col-md-6">
                    <asp:LinkButton Style="margin: 16% 0% 0% 0%;" runat="server" ID="Btn_Save_Prueba" CssClass="btn btn-success"><i class="fa fa-save"></i> Guardar Prueba</asp:LinkButton>
                </div>
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
    </div>
</asp:Content>

