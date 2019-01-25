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
    public partial class ingresar_supervisor : System.Web.UI.Page
    {
        private IDatos da = new Datos();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Establece la consulta SQL a ejecutar
                string consulta = "SELECT ID,NOMBRE FROM sexo";
                da.ConsultarDatos(consulta);
                // Asigna el valor a mostrar en el DropDownList
                sexolis.DataTextField = "NOMBRE"; ;
                // Asigna el valor del value en el DropDownList
                sexolis.DataValueField = "ID";
                // Llena el DropDownList con los datos
                sexolis.DataSource = da.ConsultarDatos(consulta);
                sexolis.DataBind();
            }

        }

        protected void Guardar(object sender, EventArgs e)
        {
            if (sexolis.SelectedIndex < 1)
            {
                string script = "alert('SELECCIONE EL SEXO');";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alerta", script, true);
                return;
            }
            else
            {
                string query = "INSERT INTO persona VALUES (" + ced.Text + ",'" + nom1.Text + "','" + nom2.Text + "','" + ape1.Text + "','" + ape2.Text + "'," + Celular.Text + ",'" + FechaN.Text + "','" + Direc.Text + "','" + Estado.Text + "','" + Detalle.Text + "'," + sexolis.SelectedValue + ");";
                da.OperarDatos(query);
                string query2 = "INSERT INTO usuario VALUES (0,'" + correo.Text + "', '" + contrasena.Text + "', NULL," + ced.Text + ",3);";
                da.OperarDatos(query2);
            }
        }
    }
}