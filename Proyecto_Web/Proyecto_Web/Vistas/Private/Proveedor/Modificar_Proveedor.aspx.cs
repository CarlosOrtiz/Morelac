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
        protected void Page_Load(object sender, EventArgs e)
        {
            DT_M_PROVEEDOR = mod_prov.ConsultarProvedores_ID(Convert.ToString(Request.QueryString["Valor"]));
            if (!IsPostBack)
            {

                TB_Nombre.Text = DT_M_PROVEEDOR.Rows[0]["NOMBRE"].ToString();
                TB_CEDULA.Text = DT_M_PROVEEDOR.Rows[0]["CEDULA"].ToString();
                TB_Telefono.Text = DT_M_PROVEEDOR.Rows[0]["CELULAR"].ToString();
                TB_Direccion.Text = DT_M_PROVEEDOR.Rows[0]["DIRECCION"].ToString();
                TB_Finca.Text = DT_M_PROVEEDOR.Rows[0]["FIN_NOMBRE"].ToString();
                Tb_Cant_leche.Text = DT_M_PROVEEDOR.Rows[0]["CANT_LECHE"].ToString();
                TB_Fecha_En.Text = DT_M_PROVEEDOR.Rows[0]["LEC_FECHA"].ToString();
                TB_Descri.Text = DT_M_PROVEEDOR.Rows[0]["DETALLE"].ToString();

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
                    ViewState["Ruta"] = "~/Views/PrivateViews/Images/Proyectos/" + System.IO.Path.GetFileName(FU_Imagen.FileName);
                    Img_FileUpload.ImageUrl = ViewState["Ruta"].ToString();
                    FU_Imagen.SaveAs(Server.MapPath(ViewState["Ruta"].ToString()));
                }
                else
                {
                    if (ViewState["Ruta"].ToString() != DT_M_PROVEEDOR.Rows[0]["URL"].ToString())
                        Img_FileUpload.ImageUrl = ViewState["Ruta"].ToString();
                    else
                    {
                        ViewState["Ruta"] = DT_M_PROVEEDOR.Rows[0]["URL"].ToString();
                        Img_FileUpload.ImageUrl = ViewState["Ruta"].ToString();
                    }
                }
            }
        }
    }
}