using Proyecto_Web.Modelos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Web.Vistas.Private.Gerente
{
    public partial class Previsualizacion_Gerente : System.Web.UI.Page
    {
        GERENTE mod_gerente = new GERENTE();
        DataTable DT_Gerente;
        protected void Page_Load(object sender, EventArgs e)
        {
            DT_Gerente = mod_gerente.ConsultarGerente_ID(Convert.ToString(Request.QueryString["Valor"]));

            Nombre.Text = DT_Gerente.Rows[0]["NOMBRE"].ToString();
            Cedula.Text = DT_Gerente.Rows[0]["CEDULA"].ToString();
            Celular.Text = DT_Gerente.Rows[0]["CELULAR"].ToString();
            Direc.Text = DT_Gerente.Rows[0]["DIRECCION"].ToString();
            Estado.Text = DT_Gerente.Rows[0]["ESTADO"].ToString();
            Descripcion.Text = DT_Gerente.Rows[0]["DETALLE"].ToString();
            Img_Persona.ImageUrl = DT_Gerente.Rows[0]["FOTO"].ToString();
        }
    }
}