using Proyecto_Web.Conection;
using Proyecto_Web.Interface;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Web.Vistas.Private
{
    public partial class REPORTEEE : System.Web.UI.Page
    {
        private IDatos dat = new Datos();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["CORREO_ELECTRONICO"].ToString().Equals(null))
                {
                    Response.Redirect("~/Vistas/Public/Index.aspx");
                }
            }
            catch (Exception)
            {
                Response.Redirect("~/Vistas/Public/Index.aspx");
            }

            DataSet dts = new DataSet();
            DataTable da, em = new DataTable();

            Reportes.Lis_proveedores rep = new Proyecto_Web.Reportes.Lis_proveedores();
            da = dat.ConsultarDatos("SELECT persona.ID_PERSONA,persona.NOMBRE1,persona.NOMBRE2,persona.APELLIDO1,persona.APELLIDO2,persona.DIRECCION,rol.ID_ROL, usuario.ROL_ID_ROL FROM usuario INNER JOIN persona ON usuario.PERSONA_ID_PERSONA =  persona.ID_PERSONA INNER JOIN rol ON usuario.ROL_ID_ROL=rol.ID_ROL WHERE ROL_ID_ROL=5;");
            rep.SetDataSource(da);

            em = dat.ConsultarDatos("Select NOMBRE From empresa ;");
            rep.SetParameterValue("Empresa", em.Rows[0]["NOMBRE"].ToString());

            re_proveedoores.ReportSource = rep;
            re_proveedoores.Height = 200;
            re_proveedoores.Width = 200;

        }


    }
}