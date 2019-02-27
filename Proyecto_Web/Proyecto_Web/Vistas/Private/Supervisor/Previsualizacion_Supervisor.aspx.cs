using Proyecto_Web.Modelos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Web.Vistas.Private.Supervisor
{
    public partial class Previsualizacion_Supervisor : System.Web.UI.Page
    {
        SUPERVISOR mod_supervisor = new SUPERVISOR();
        DataTable DT_Supervisor;
        protected void Page_Load(object sender, EventArgs e)
        {
            DT_Supervisor = mod_supervisor.ConsultarSupervisor_ID(Convert.ToString(Request.QueryString["Valor"]));

            Nombre.Text = DT_Supervisor.Rows[0]["NOMBRE"].ToString();
            Cedula.Text = DT_Supervisor.Rows[0]["CEDULA"].ToString();
            Celular.Text = DT_Supervisor.Rows[0]["CELULAR"].ToString();
            Direc.Text = DT_Supervisor.Rows[0]["DIRECCION"].ToString();
            Estado.Text = DT_Supervisor.Rows[0]["ESTADO"].ToString();
            Descripcion.Text = DT_Supervisor.Rows[0]["DETALLE"].ToString();
            Img_Persona.ImageUrl = DT_Supervisor.Rows[0]["FOTO"].ToString();
        }
    }
}