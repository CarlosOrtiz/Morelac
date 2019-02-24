using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_Web.Modelos;

namespace Proyecto_Web.Vistas.Private.Proveedor
{
    public partial class Proveedores : System.Web.UI.Page
    {
        DataTable Tabla_Proveedor;
        PROVEEDOR mol_proveedor = new PROVEEDOR();
        protected void Page_Load(object sender, EventArgs e)
        {
            Tabla_Proveedor = mol_proveedor.ConsultarProvedoresAll();
            Rep_Proveedores.DataSource = Tabla_Proveedor;
            Rep_Proveedores.DataBind();
        }
    }
}