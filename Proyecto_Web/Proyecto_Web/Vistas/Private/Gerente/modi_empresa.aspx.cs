using Proyecto_Web.Conection;
using Proyecto_Web.Interface;
using System;
using Proyecto_Web.Modelos;
using System.Data;

namespace Proyecto_Web.Vistas.Private
{
    public partial class modi_empresa : System.Web.UI.Page
    {
        private IDatos da = new Datos();
        EMPRESA mod_empresa = new EMPRESA();
        public string id_empresa;
        public string Static_Nombre,Static_Mision, Static_Vision, Static_Direccion, Static_Correo, Static_Numero,Static_Dueño;
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
           
                if (!IsPostBack)
                {
                    NOMBRE.Text = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_NOMBRE"].ToString();
                    NIT.Text = mod_empresa.ConsultarEmpresa().Rows[0]["ID_EMPRESA"].ToString();
                    MISION.Text = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_MISION"].ToString();
                    VISION.Text = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_VISION"].ToString();
                    DIRECCIÓN.Text = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_DIRECCION"].ToString();
                    CORREO.Text = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_CORREO"].ToString();
                    NUMERO.Text = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_TELEFONO"].ToString();
                    DUEÑO.Text = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_DUENO"].ToString();
                    IMG_EMPRESA2.ImageUrl = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_FOTO"].ToString();
                    IMG_EMPRESAS.ImageUrl = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_FOTO"].ToString();
                    id_empresa = mod_empresa.ConsultarEmpresa().Rows[0]["ID_EMPRESA"].ToString();

                Static_Nombre = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_NOMBRE"].ToString();
                Static_Dueño = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_DUENO"].ToString();
                Static_Mision = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_MISION"].ToString();
                Static_Vision = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_VISION"].ToString(); 
                Static_Direccion = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_DIRECCION"].ToString();
                Static_Correo = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_CORREO"].ToString();
                Static_Numero = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_TELEFONO"].ToString();
            }


        }

        protected void Habilitar_datos_Click(object sender, EventArgs e)
        {
            if(NOMBRE.Enabled != true)
            {
                NOMBRE.Enabled = true;
                NOMBRE.Text = mod_empresa.ConsultarEmpresa().Rows[0]["EMP_NOMBRE"].ToString();
            }
            
           
            Save_datos_empresa.Enabled = true;
        }

        protected void Save_datos_empresa_Click(object sender, EventArgs e)
        {
            mod_empresa.ActualizarEmpresa(id_empresa, NOMBRE.Text, DIRECCIÓN.Text, CORREO.Text, NUMERO.Text, DUEÑO.Text, MISION.Text, VISION.Text);
        }
    }

}