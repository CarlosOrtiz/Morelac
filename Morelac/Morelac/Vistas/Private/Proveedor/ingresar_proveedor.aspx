<%@ Page Title="" Language="C#" MasterPageFile="~/Vistas/Private/Home/Admin.Master" AutoEventWireup="true" CodeBehind="ingresar_proveedor.aspx.cs" Inherits="Proyecto_Web.Vistas.Private.ingresar_proveedor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
                            <asp:Image runat="server" ID="IMG_EMPRESAS" ImageUrl="~/Plantilla/Privado/dist/img/avatar2.png" Width="100" />
                        </p>
                        <hr>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <input type="file" id="exampleInputFile" />
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
                        <li><a href="#Leche" data-toggle="tab">Registrar Leche</a></li>
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
                                                <asp:TextBox ID="datepicker" runat="server" TextMode="Date" Text="dd-mm-aaaa" CssClass="form-control pull-right"></asp:TextBox>
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
                                        <asp:TextBox ID="contrasena" runat="server" aria-describedby="addon-right addon-left" TextMode="password" placeholder="*****" CssClass="form-control style-form"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">SEXO</label>
                                    <div class="col-sm-9">
                                        <asp:DropDownList ID="DDL_Sexo" CssClass="form-control" runat="server" BackColor="White">
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
                                        <asp:TextBox runat="server" MaxLength="45" ID="ubi_finca" CssClass="form-control style-form solo-letras" placeholder="JUAN" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">¿CUANTAS HECTÁREAS CUENTA SU FINCA?</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox runat="server" ID="hectarias" MaxLength="45" TextMode="Number" CssClass="form-control style-form solo-letras" placeholder="JUAN" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">¿CUAL ES SU CAPACIDAD POR SEMANA PARA PRODUCCIR LECHE?</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox runat="server" ID="cap_leche" MaxLength="45" TextMode="Number" CssClass="form-control style-form solo-letras" placeholder="JUAN" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">PROVEEDOR: </label>
                                    <div class="col-sm-9">
                                        <asp:DropDownList ID="Asig_Persona" style="width:200px;"  CssClass="form-control select2" AppendDataBoundItems="true" runat="server" BackColor="White">
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
                        <div class="tab-pane" id="Leche">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">CANTIDAD DE LECHE DEL PROVEEDOR</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox runat="server" MaxLength="45" ID="cant_leche" CssClass="form-control style-form solo-letras" TextMode="Number" placeholder="JUAN" pattern="[A-Za-z]+"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">FECHA DE ENTREGA</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox runat="server" MaxLength="45" ID="FechaEn" TextMode="Date" CssClass="form-control style-form solo-letras" Text="dd-mm-aaaa"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-3 control-label">FINCA: </label>
                                    <div class="col-sm-9">
                                        <asp:DropDownList ID="Drop_Finca" style="width:200px;" CssClass="form-control select2" AppendDataBoundItems="true" runat="server" BackColor="White">
                                            <asp:ListItem Value="0">Seleccionar</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10 text-right">
                                        <asp:LinkButton ID="btn_Leche" runat="server" CssClass="btn btn-success" OnClick="btn_Leche_Click"><i class="fa fa-save"></i>&nbsp Guardar Datos</asp:LinkButton>
                                        <asp:LinkButton ID="btn_Leche_cerrar" runat="server" CssClass="btn btn-danger" OnClick="btn_Leche_cerrar_Click"><i class="fa fa-remove"></i>&nbsp Cacelar</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="modal <%=modal_tipo%> fade" id="modal-perfil" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title"><%=modal_titulo%></h4>
                </div>
                <div class="modal-body">
                    <p><%=modal_mensaje%></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal" onclick="redirect(<%= modal_link %>)">Aceptar</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsEndPage" runat="server">
  <script>
  $(function () {
    //Initialize Select2 Elements
    $('.select2').select2()

    //Datemask dd/mm/yyyy
    $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
    //Datemask2 mm/dd/yyyy
    $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
    //Money Euro
    $('[data-mask]').inputmask()

    //Date range picker
    $('#reservation').daterangepicker()
    //Date range picker with time picker
    $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A' })
    //Date range as a button
    $('#daterange-btn').daterangepicker(
      {
        ranges   : {
          'Today'       : [moment(), moment()],
          'Yesterday'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
          'Last 7 Days' : [moment().subtract(6, 'days'), moment()],
          'Last 30 Days': [moment().subtract(29, 'days'), moment()],
          'This Month'  : [moment().startOf('month'), moment().endOf('month')],
          'Last Month'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        startDate: moment().subtract(29, 'days'),
        endDate  : moment()
      },
      function (start, end) {
        $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
      }
    )

    //Date picker
    $('#datepicker').datepicker({
      autoclose: true
    })

    //iCheck for checkbox and radio inputs
    $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
      checkboxClass: 'icheckbox_minimal-blue',
      radioClass   : 'iradio_minimal-blue'
    })
    //Red color scheme for iCheck
    $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
      checkboxClass: 'icheckbox_minimal-red',
      radioClass   : 'iradio_minimal-red'
    })
    //Flat red color scheme for iCheck
    $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
      checkboxClass: 'icheckbox_flat-green',
      radioClass   : 'iradio_flat-green'
    })

    //Colorpicker
    $('.my-colorpicker1').colorpicker()
    //color picker with addon
    $('.my-colorpicker2').colorpicker()

    //Timepicker
    $('.timepicker').timepicker({
      showInputs: false
    })
  })
</script>
</asp:Content>
