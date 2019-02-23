using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_Web.Modelos;

namespace Proyecto_Web.Vistas.Private.Supervisor
{
    public partial class Supervisor : System.Web.UI.Page
    {
        PERSONA MOD_PERSONA = new PERSONA();
        MENU mod_menu = new MENU();
        public string foto, Nombre, n1, n2, ape1, ape2, IDn;
        DataTable MenuDin,tabla = new DataTable();
        SUPERVISOR mod_supervisor = new SUPERVISOR();
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
            IDn = 1 + "";
            foto = MOD_PERSONA.ConsultarPersona(Session["CORREO_ELECTRONICO"].ToString()).Rows[0]["PER_FOTO"].ToString();
            n1 =MOD_PERSONA.ConsultarPersona(Session["CORREO_ELECTRONICO"].ToString()).Rows[0]["PER_NOMBRE1"].ToString();
            ape1 = MOD_PERSONA.ConsultarPersona(Session["CORREO_ELECTRONICO"].ToString()).Rows[0]["PER_APELLIDO1"].ToString();
            Nombre = n1 + " " + ape1;

            MenuDin = mod_menu.ConsultarMenu(Session["CORREO_ELECTRONICO"].ToString());
            Rep_Menu_Dinamico.DataSource = MenuDin;
            Rep_Menu_Dinamico.DataBind();

            tabla = mod_supervisor.ConsultarSupervisorAll();
            Tabla_Supervisor.DataSource = tabla;
            Tabla_Supervisor.DataBind();
        }
        protected void Btn_cerrar_Click(object sender, EventArgs e)
        {
            Session["ID_ROL"] = null;
            Session["CORREO_ELECTRONICO"] = null;
            Session["CONTRASENA"] = null;
            Session.Abandon();
            Session.Contents.RemoveAll();
            Response.Redirect("~/Vistas/Public/Index.aspx");
        }
    }
}