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
            DataSet dts = new DataSet();
            DataTable da, em = new DataTable();

            Reportes.Proveedores rep = new Proyecto_Web.Reportes.Proveedores();
            da = dat.ConsultarDatos("Select ID_PERSONA,NOMBRE1,NOMBRE2,APELLIDO1,APELLIDO2,DIRECCION From persona ;");
            rep.SetDataSource(da);

            em = dat.ConsultarDatos("Select NOMBRE From empresa ;");
            rep.SetParameterValue("Empresa", em.Rows[0]["NOMBRE"].ToString());

            

            re_proveedoores.ReportSource = rep;
            //re_proveedoores.Height = 200;
            //re_proveedoores.Width = 200;

        }

        
    }
}