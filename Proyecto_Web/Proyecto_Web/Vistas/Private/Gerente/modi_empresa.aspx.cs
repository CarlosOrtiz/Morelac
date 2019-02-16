using Proyecto_Web.Conection;
using Proyecto_Web.Interface;
using System;
using System.Diagnostics.Contracts;

namespace Proyecto_Web.Vistas.Private
{
    public partial class modi_empresa : System.Web.UI.Page
    {
        private IDatos da = new Datos();
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



        }

        protected void Consul(object sender, EventArgs e)
        {
            iden.Enabled = false;
            String query = "SELECT ID_EMPRESA,NOMBRE,DIRECCION,CORREO,TELEFONO,DUENO,MISION,VISION,FOTO FROM empresa WHERE ID_EMPRESA= 123456789";

            da.ConsultarDatos(query);


            string ident, nombre, direccion, correo, telefono, dueno, mision, vision, foto;

            foreach (System.Data.DataRow v in da.ConsultarDatos(query).Rows)
                      
            {
                //aca haces las operaciones con cada fila de la tabla ej:
                ident = v["ID_EMPRESA"].ToString();
                nombre = v["NOMBRE"].ToString();
                direccion = v["DIRECCION"].ToString();
                correo = v["CORREO"].ToString();
                telefono = v["TELEFONO"].ToString();
                dueno = v["DUENO"].ToString();
                mision = v["MISION"].ToString();
                vision = v["VISION"].ToString();
                foto = v["FOTO"].ToString();

                iden.Text = "" + ident;
                empresa.Text = "" + nombre;
                direc.Text = "" + direccion;
                corre.Text = "" + correo;
                telefo.Text = "" + telefono;
                due.Text = "" + dueno;
                mi.Value = "" + mision;
                vi.Value = "" + vision;
            

                //mi.ToString = mision;


            }
        }

        protected void Bototn_Clic(object sender, EventArgs e)
        {
            string query = "UPDATE empresa SET  NOMBRE = '" + empresa.Text + "', DIRECCION = '" + direc.Text + "', CORREO='" + corre.Text + "', TELEFONO=" + telefo.Text + ", DUENO='" + due.Text + "', MISION='" + mi.Value + "', VISION='" + vi.Value + "', FOTO='NULL' WHERE ID_EMPRESA="+iden.Text+"";
            da.OperarDatos(query);
        }

        //protected void Inser(object sender, EventArgs e)
        //{

        //    //string query = "INSERT INTO empresa VALUES(" + iden.Text + ",'" + empresa.Text + "','" + direc.Text + "','NULL','NULL','NULL');";
        //    //string query = "INSERT INTO empresa (ID_EMPRESA,NOMBRE,DIRECCION,MISION,VISION,LOGO) VALUES(0987652,'QQQQQQQQ','CCCCCCCC','NULL','NULL','NULL');";
        //    //da.OperarDatos(query);
        //    //Response.Redirect("http://www.google.com");

        //}


    }

}