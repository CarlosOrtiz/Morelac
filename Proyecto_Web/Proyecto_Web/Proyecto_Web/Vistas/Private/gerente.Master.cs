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

namespace Proyecto_Web.Vistas.Private
{
    public partial class gerente : System.Web.UI.MasterPage
    {
        private IDatos dat = new Datos();
      
        protected void Page_Load(object sender, EventArgs e)
        {

            /*
            // mostrar.Text=Session["Login"].ToString();
            */
            // String foto = "Select * From usuario WHERE FOTO='" + FOTO.ToString() + "';";
            //String BD_Nombre = "Select NOMBRE1, NOMBRE2, APELLIDO1, APELLIDO2 From persona Inner join usuario on persona.ID_PERSONA = usuario.PERSONA_ID_PERSONA Where usuario.CORREO_ELECTRONICO=" + Session["login"].ToString() + ";";
            //DataTable dt = new DataTable();
            //dt = dat.ConsultarDatos(BD_Nombre);

            ////  if (dt.Rows.Count>0)
            //// {
            ////     mostrar.Text = dt.ToString();
            //// }
            if (!IsPostBack)
            {

                mostrar.Text = " ";

            }

            if (Session["Login"] != null)
            {

                mostrar.Text = Session["Login"].ToString();

            }
           



        }




    }
}