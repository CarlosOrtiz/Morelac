using Proyecto_Web.Conection;
using Proyecto_Web.Interface;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Proyecto_Web.Vistas.Public
{
    public partial class login : System.Web.UI.Page
    {
        private IDatos dat = new Datos();

        public string USUARIO { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            

        }
        protected void In_Sesion_Click(object sender, EventArgs e)
        {
            if (Session["Login"] != null) //cuando es distinto entra 
            {
                Session["Login"] = Usu.Text;
            }
            
            String Email = Usu.Text;
            String Pass = contra.Text;
            String BD_Correo = "Select CORREO_ELECTRONICO, CONTRASENA From usuario WHERE CORREO_ELECTRONICO='" + Usu.Text + "' AND CONTRASENA='" + contra.Text + "';";
            
            DataTable dt = new DataTable();
            dt = dat.ConsultarDatos(BD_Correo);

            if (dt.Rows.Count > 0)
            {
                
                Response.Redirect("../Private/index_gerente.aspx");
                Session["Login"] = Usu.Text;
            }
            else
            {
                ScriptManager.RegisterStartupScript(Page, GetType(), "key", " myFunction();", true);
            }

        }

        /*protected void act_Click(object sender, EventArgs e)
        {
            mostrar.Text = Session["Login"].ToString();
        }
         */
    }

}