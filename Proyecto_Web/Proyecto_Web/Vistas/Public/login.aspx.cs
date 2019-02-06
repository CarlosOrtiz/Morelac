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
using Proyecto_Web.Modelos;

namespace Proyecto_Web.Vistas.Public
{
    public partial class login : System.Web.UI.Page
    {
        private IDatos dat = new Datos();
        USUARIO MOD_USUARIO = new USUARIO();
        ROL MOD_ROL = new ROL();

        public string USUARIO { get; private set; }
        public string mjs = "Defecto";

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session.Contents.Count > 0)
            //{
            //    Response.Redirect("~/Vistas/Public/Index.aspx");
            //}
        }
        protected void In_Sesion_Click(object sender, EventArgs e)
        {
            try
            {
                if (!string.IsNullOrEmpty(correo_login.Text) && !string.IsNullOrEmpty(contra_login.Text))
                {
                    if (MOD_USUARIO.ConsultarUsuarios(correo_login.Text, contra_login.Text).Rows[0]["TIPO"].Equals("3"))
                    {
                        Session["ID_ROL"] = MOD_ROL.Consultarrol(correo_login.Text).Rows[0]["ID_ROL"].ToString();
                        Session["CORREO_ELECTRONICO"] = contra_login.Text;
                        Response.Redirect("~/Vistas/Private/index_admin.aspx");

                        switch (Int32.Parse(MOD_ROL.Consultarrol(correo_login.Text).Rows[0]["ID_ROL"].ToString()))
                        {
                            case 1:
                                Response.Redirect("~/Vistas/Private/index_admin.aspx");
                                break;
                            default:
                                Response.Redirect("~/Vistas/Public/login.aspx");
                                break;
                        }
                    }
                    else
                    {
                        mjs = MOD_USUARIO.ConsultarUsuarios(correo_login.Text, contra_login.Text).Rows[0]["MENSAJE"].ToString();
                        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "Confirm();", true);
                    }
                }
                else
                {
                    mjs = MOD_USUARIO.ConsultarUsuarios(correo_login.Text, contra_login.Text).Rows[0]["MENSAJE"].ToString();
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "Confirm();", true);
                }

            }
            catch (Exception)
            {
                mjs = MOD_USUARIO.ConsultarUsuarios(correo_login.Text, contra_login.Text).Rows[0]["MENSAJE"].ToString();
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "Confirm();", true);
            }
        }

    }

}
