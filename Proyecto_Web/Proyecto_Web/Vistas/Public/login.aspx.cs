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
            //if (!IsPostBack)
            //{
            //    mostrar.Text = " ";
            //}
            //if (Session["Login"] != null)
            //{
            //    mostrar.Text = Session["Login"].ToString();

            //}

        }
        protected void In_Sesion_Click(object sender, EventArgs e)
        {
            //if (Session["Login"] != null) //cuando es distinto entra 
            //{
            //    Session["Login"] = Usu.Text;
            //}
          
            String Email = Usu.Text;
            String Pass = contra.Text;
            String BD_Correo = "Select CORREO_ELECTRONICO, CONTRASENA From usuario WHERE CORREO_ELECTRONICO='" + Usu.Text + "' AND CONTRASENA='" + contra.Text + "';";
            //DataTable dt = new DataTable();
            //dt = dat.ConsultarDatos(BD_Correo);
            string rol = "SELECT ID_ROL FROM rol INNER JOIN usuario ON rol.ID_ROL = usuario.ROL_ID_ROL WHERE CORREO_ELECTRONICO='"+Usu.Text+"';";
            if (dat.ConsultarDatos(BD_Correo).Rows.Count > 0)
            {
                //mostrar.Text = Session["Login"].ToString();
                ////Response.Redirect("../Private/index_gerente.aspx");
                //Session["Login"] = Usu.Text;

                

                switch (dat.ConsultarDatos(rol).Rows[0]["ID_ROL"])
                {
                    case 1:
                        Response.Redirect("../../Vistas/Private/index_gerente.aspx");
                        break;
                    case 2:
                        Response.Redirect("../../Vistas/Private/index_supervisor.aspx");
                        break;
                    //case 3:
                    //    Response.Redirect("../../Vistas/Private/index_supervisor.aspx");
                    //    break;
                    default:
                        Response.Redirect("../../Vistas/Public/login.aspx");
                        break;
                }


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