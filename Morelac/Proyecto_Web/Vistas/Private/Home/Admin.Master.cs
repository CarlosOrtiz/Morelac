using System;
using System.Collections.Generic;
using System.Data;
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
        MENU mod_menu = new MENU();
        ROL mod_rol = new ROL();
        public string foto, Nombre,n1,n2,ape1,ape2,IDn;

        DataTable MenuDin,SubMenu = new DataTable();

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
            IMG.ImageUrl = MOD_PERSONA.ConsultarPersona(Session["CORREO_ELECTRONICO"].ToString()).Rows[0]["PER_FOTO"].ToString();
            n1 = MOD_PERSONA.ConsultarPersona(Session["CORREO_ELECTRONICO"].ToString()).Rows[0]["PER_NOMBRE1"].ToString();
            ape1 = MOD_PERSONA.ConsultarPersona(Session["CORREO_ELECTRONICO"].ToString()).Rows[0]["PER_APELLIDO1"].ToString();
            NombreUser.Text = n1 + " " + ape1;
            RolUser.Text = mod_rol.Consultarrol(Session["CORREO_ELECTRONICO"].ToString()).Rows[0]["ROL_NOMBRE"].ToString();
            MenuDin = mod_menu.ConsultarMenu(Session["CORREO_ELECTRONICO"].ToString());
            Rep_Menu_Dim.DataSource = MenuDin;
            Rep_Menu_Dim.DataBind();
            
            SubMenu = mod_menu.ConsultarSub_Menu(MenuDin.Rows[0]["ID_MENU"].ToString());
            
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