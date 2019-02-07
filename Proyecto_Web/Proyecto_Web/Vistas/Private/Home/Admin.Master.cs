using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_Web.Modelos;
namespace Proyecto_Web.Vistas.Private
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        PERSONA MOD_PERSONA = new PERSONA();
        public string foto, Nombre,n1,n2,ape1,ape2;
        protected void Page_Load(object sender, EventArgs e)
        {

            foto = MOD_PERSONA.ConsultarPersona(Session["CORREO_ELECTRONICO"].ToString()).Rows[0]["PER_FOTO"].ToString();
                
            n1=MOD_PERSONA.ConsultarPersona(Session["CORREO_ELECTRONICO"].ToString()).Rows[0]["PER_NOMBRE1"].ToString();
            ape1 = MOD_PERSONA.ConsultarPersona(Session["CORREO_ELECTRONICO"].ToString()).Rows[0]["PER_APELLIDO1"].ToString();
            Nombre = n1 + " " + ape1;
        }
    }
}