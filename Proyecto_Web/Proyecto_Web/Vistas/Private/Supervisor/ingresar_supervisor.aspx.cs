using Proyecto_Web.Conection;
using Proyecto_Web.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_Web.Modelos;

namespace Proyecto_Web.Vistas.Private
{
    public partial class Ingresar_supervisor : System.Web.UI.Page
    {
        private IDatos da = new Datos();
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
            if (!IsPostBack)
            {
             
            }

        }

        protected void Guardar(object sender, EventArgs e)
        {
 
        }
    }
}