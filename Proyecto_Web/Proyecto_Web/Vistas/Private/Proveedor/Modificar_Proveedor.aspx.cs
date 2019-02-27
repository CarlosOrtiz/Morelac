using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_Web.Modelos;
using System.Data;

namespace Proyecto_Web.Vistas.Private.Proveedor
{
    public partial class Modificar_Proveedor : System.Web.UI.Page
    {
        PROVEEDOR mod_prov = new PROVEEDOR();
        PERSONA mod_per = new PERSONA();
        DataTable DT_M_PROVEEDOR;

        public string modal_mensaje;
        public string modal_titulo;
        public string modal_tipo;
        public string modal_link;

        protected void Page_Load(object sender, EventArgs e)
        {
            DT_M_PROVEEDOR = mod_prov.ConsultarProvedores_ID(Convert.ToString(Request.QueryString["Valor"]));
            if (!IsPostBack)
            {
                TB_Nombre.Text = DT_M_PROVEEDOR.Rows[0]["PER_NOMBRE1"].ToString();
                TB_Nombre2.Text = DT_M_PROVEEDOR.Rows[0]["PER_NOMBRE2"].ToString();
                TB_Apellido1.Text = DT_M_PROVEEDOR.Rows[0]["PER_APELLIDO1"].ToString();
                TB_Apellido2.Text = DT_M_PROVEEDOR.Rows[0]["PER_APELLIDO2"].ToString();
                TB_CEDULA.Text = DT_M_PROVEEDOR.Rows[0]["CEDULA"].ToString();
                TB_Telefono.Text = DT_M_PROVEEDOR.Rows[0]["CELULAR"].ToString();
                TB_Direccion.Text = DT_M_PROVEEDOR.Rows[0]["DIRECCION"].ToString();
                TB_Finca.Text = DT_M_PROVEEDOR.Rows[0]["FIN_NOMBRE"].ToString();
                Tb_Cant_leche.Text = DT_M_PROVEEDOR.Rows[0]["CANT_LECHE"].ToString();
                TB_Fecha_En.Text = DT_M_PROVEEDOR.Rows[0]["LEC_FECHA"].ToString();
                TB_Descri.Text = DT_M_PROVEEDOR.Rows[0]["DETALLE"].ToString();
                dimencion.Text = DT_M_PROVEEDOR.Rows[0]["FIN_DIMENSION"].ToString();
                ubicacion.Text= DT_M_PROVEEDOR.Rows[0]["FIN_UBICACION"].ToString();
                correo.Text = DT_M_PROVEEDOR.Rows[0]["CORREO"].ToString();
                contra.Text = DT_M_PROVEEDOR.Rows[0]["CONTRASENA"].ToString();
                ViewState["VS_Participantes"] = DT_M_PROVEEDOR;
                ViewState["Ruta"] = DT_M_PROVEEDOR.Rows[0]["FOTO"].ToString();
                Img_FileUpload.ImageUrl = ViewState["Ruta"].ToString();
            }
            else
            {
                DT_M_PROVEEDOR = (DataTable)ViewState["VS_Participantes"];
                //if (Drop_Estado.SelectedIndex.Equals(0) || Drop_Estado.SelectedIndex.Equals(1))
                //    ScriptManager.RegisterStartupScript(UP_Datos, UP_Datos.GetType(), "script", "mostrarElemento('Div_Fecha_Fin', false);", true);
                //else
                //    ScriptManager.RegisterStartupScript(UP_Datos, UP_Datos.GetType(), "script", "mostrarElemento('Div_Fecha_Fin', true);", true);

                if (FU_Imagen.HasFile)
                {
                    ViewState["Ruta"] = "~/Vistas/Private/ImgUser/" + System.IO.Path.GetFileName(FU_Imagen.FileName);
                    Img_FileUpload.ImageUrl = ViewState["Ruta"].ToString();
                    FU_Imagen.SaveAs(Server.MapPath(ViewState["Ruta"].ToString()));
                }
                else
                {
                    if (ViewState["Ruta"].ToString() != DT_M_PROVEEDOR.Rows[0]["FOTO"].ToString())
                        Img_FileUpload.ImageUrl = ViewState["Ruta"].ToString();
                    else
                    {
                        ViewState["Ruta"] = DT_M_PROVEEDOR.Rows[0]["FOTO"].ToString();
                        Img_FileUpload.ImageUrl = ViewState["Ruta"].ToString();
                    }
                }
            }
        }
        protected void Btn_Modificar_Click(object sender, EventArgs e)
        {
            if (TB_Nombre.Text.Length == 0)
                mostrarModal("Campo vacio, por favor ingrese su primer nombre en el campo nombre 1", "Error", "modal-danger");
            else if(TB_Nombre.Text.Length < 3)
                mostrarModal("Por favor ingrese su primer nombre correctamente", "Error", "modal-danger");
            else
            mod_prov.ActualizarProveedor(Convert.ToInt32(Request.QueryString["Valor"]), TB_CEDULA.Text, TB_Nombre.Text, TB_Nombre2.Text, TB_Apellido1.Text, TB_Apellido2.Text, TB_Telefono.Text,TB_Direccion.Text, TB_Descri.Text, 'M', contra.Text, Convert.ToString(Drop_Estado.SelectedValue), TB_Finca.Text, ubicacion.Text,dimencion.Text ,Tb_Cant_leche.Text, TB_Fecha_En.Text);
               
           
        }
        protected void mostrarModal(string mensaje, string titulo, string tipo, string link = null)
        {
            modal_mensaje = mensaje;
            modal_titulo = titulo;
            modal_tipo = tipo;
            modal_link = link;
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script1", "MostrarModal('modal-modi_proveedor');", true);
        }

     
    }
}