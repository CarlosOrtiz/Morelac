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

            //if (!Page.IsPostBack)
            //{
            //    String BD_Nombre = "Select NOMBRE1, NOMBRE2, APELLIDO1, APELLIDO2,FOTO From persona Inner join usuario on persona.ID_PERSONA = usuario.PERSONA_ID_PERSONA Where usuario.CORREO_ELECTRONICO='" + Session["login"].ToString() + "';";
            //    DataTable dt = new DataTable();
            //    dat.ConsultarDatos(BD_Nombre);
            //    if (dat.ConsultarDatos(BD_Nombre).Rows.Count > 0)
            //    {
            //        string nombre1, nombre2, apellido1, apellido2, foto;
            //        foreach (DataRow v in dat.ConsultarDatos(BD_Nombre).Rows)
            //        {
            //            nombre1 = v["NOMBRE1"].ToString();
            //            nombre2 = v["NOMBRE2"].ToString();
            //            apellido1 = v["APELLIDO1"].ToString();
            //            apellido2 = v["APELLIDO2"].ToString();
            //            foto = v["FOTO"].ToString();
            //            mostrar.Text = "" + nombre1 + " " + nombre2 + " " + apellido1 + " " + apellido2;
            //            FOTO.ImageUrl = "" + foto;
            //            Session["login"] = mostrar.Text;
            //        }
            //    }
            //}
        }
    }
}