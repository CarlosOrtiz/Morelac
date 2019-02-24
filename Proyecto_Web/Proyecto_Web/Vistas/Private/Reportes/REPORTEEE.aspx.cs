using Proyecto_Web.Conection;
using Proyecto_Web.Interface;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_Web.Modelos;
using Proyecto_Web.Reportes;

namespace Proyecto_Web.Vistas.Private
{
    public partial class REPORTEEE : System.Web.UI.Page
    {
        private IDatos dat = new Datos();
        PROVEEDOR m_pro = new PROVEEDOR();
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

            Lis_proveedores rep = new Lis_proveedores();
            da = dat.ConsultarDatos("SELECT ID_EMPRESA,EMP_NOMBRE,EMP_DIRECCION,EMP_CORREO,EMP_TELEFONO,EMP_DUENO,EMP_MISION,EMP_VISION,EMP_FOTO FROM EMPRESA ;");
            rep.SetDataSource(da);
            

            em = dat.ConsultarDatos("Select EMP_NOMBRE From empresa ;");
            rep.SetParameterValue("Empresa", em.Rows[0]["EMP_NOMBRE"].ToString());

            re_proveedoores.ReportSource = rep;
            re_proveedoores.Height = 200;
            re_proveedoores.Width = 400;
            re_proveedoores.DataBind();

        }

     
    }
}