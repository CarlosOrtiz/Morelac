using Proyecto_Web.Conection;
using Proyecto_Web.Interface;
using System;
using System.Diagnostics.Contracts;

namespace Proyecto_Web.Vistas.Private
{
    public partial class modi_empresa : System.Web.UI.Page
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



        }


    }

}