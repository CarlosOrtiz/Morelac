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

            Nombre.Text = DT_Supervisor.Rows[0]["PER_NOMBRE1"].ToString() + " " + DT_Supervisor.Rows[0]["PER_NOMBRE2"].ToString() + " " + DT_Supervisor.Rows[0]["PER_APELLIDO1"].ToString() + " " + DT_Supervisor.Rows[0]["PER_APELLIDO2"].ToString();
            Cedula.Text = DT_Supervisor.Rows[0]["PER_CEDULA"].ToString();
            Celular.Text = DT_Supervisor.Rows[0]["PER_CELULAR"].ToString();
            Direc.Text = DT_Supervisor.Rows[0]["PER_DIRECCION"].ToString();
            Estado.Text = DT_Supervisor.Rows[0]["ESTADO"].ToString();
            Descripcion.Text = DT_Supervisor.Rows[0]["PER_DETALLES"].ToString();
            Img_Persona.ImageUrl = DT_Supervisor.Rows[0]["PER_FOTO"].ToString();
        }
    }
}