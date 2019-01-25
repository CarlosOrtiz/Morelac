using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Web.Vistas.Private
{
    public partial class gestionar_proveedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Datos cn = new Datos();
          //  string query = "INSERT INTO persona VALUES(" + ident.Text + ",'" + nom.Text + "', '" + ape.Text + "')";
         //   cn.OperarDatos(query);
        }
    }
}