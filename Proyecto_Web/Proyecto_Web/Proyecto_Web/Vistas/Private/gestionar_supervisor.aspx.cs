using Proyecto_Web.Conection;
using Proyecto_Web.Interface;
using System;

namespace Proyecto_Web.Vistas.Private
{
    public partial class gestionar_supervisor : System.Web.UI.Page
    {
        private IDatos da = new Datos();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public DateTime SelectedDate { get; set; }

        protected void guardar(object sender, EventArgs e)
        {

            string query = "INSERT INTO persona VALUES ("+ced.Text+",'" + nom1.Text + "','" + nom2.Text + "','"+ ape1.Text + "','" + ape2.Text + "',"+Celular.Text+",'"+FechaN.Text+"','" + Direc.Text + "','" + sexo.Text + "','" + Estado.Text +"','"+Detalle.Text + "');";
                da.OperarDatos(query);
           // Response.Redirect("index_supervisor.aspx");
            Response.Redirect("http://www.google.com");
        }

    }
}