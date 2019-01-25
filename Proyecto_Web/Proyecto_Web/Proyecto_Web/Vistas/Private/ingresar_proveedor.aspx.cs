using Proyecto_Web.Conection;
using Proyecto_Web.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_Web.Vistas.Private
{
    public partial class ingresar_proveedor : System.Web.UI.Page
    {
        private IDatos da = new Datos();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            
        }

        protected void Inser(object sender, EventArgs e)
        {

            string query = "INSERT INTO  persona (ID_PERSONA,NOMBRES,APELLIDOS,CELULAR,NACIMIENTO,DIRECCION,SEXO,ESTADO,DETALLES) VALUES(123456789,'NATHALIA','RODRIGUEZ RAMIREZ',320937617,'1998-09-24','FLORENCIA','F','ACTIVO');";
            da.OperarDatos(query);
            //Response.Redirect("http://www.google.com");

        }
    }
}