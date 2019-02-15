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
        public string foto, Nombre,n1,n2,ape1,ape2,IDn;
        DataTable MenuDin = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            IDn = 1 + "";
            //foto = MOD_PERSONA.ConsultarPersona(Session["CORREO_ELECTRONICO"].ToString()).Rows[0]["PER_FOTO"].ToString();
            foto = "https://scontent-mia3-2.xx.fbcdn.net/v/t1.0-9/51158817_2195938630723557_1395904580683825152_n.jpg?_nc_cat=100&_nc_ht=scontent-mia3-2.xx&oh=f20742908ec47d141eb77c5ae7e1499a&oe=5CE32017";
            //n1 =MOD_PERSONA.ConsultarPersona(Session["CORREO_ELECTRONICO"].ToString()).Rows[0]["PER_NOMBRE1"].ToString();
            //ape1 = MOD_PERSONA.ConsultarPersona(Session["CORREO_ELECTRONICO"].ToString()).Rows[0]["PER_APELLIDO1"].ToString();
            //Nombre = n1 + " " + ape1;
            Nombre = "JOHANT VARGAS";


            MenuDin = mod_menu.ConsultarMenu(IDn,Session["CORREO_ELECTRONICO"].ToString());
            Rep_Menu_Dinamico.DataSource = MenuDin;
            Rep_Menu_Dinamico.DataBind();
            
        }
    }
}