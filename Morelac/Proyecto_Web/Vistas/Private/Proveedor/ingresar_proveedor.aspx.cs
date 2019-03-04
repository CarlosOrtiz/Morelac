﻿using Proyecto_Web.Conection;
using Proyecto_Web.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_Web.Modelos;
using System.Data;

namespace Proyecto_Web.Vistas.Private
{
    public partial class ingresar_proveedor : System.Web.UI.Page
    {
        private IDatos da = new Datos();
        PERSONA mod_persona = new PERSONA();
        PROVEEDOR mod_proveedor = new PROVEEDOR();
        FINCA mod_finca = new FINCA();

        public string modal_mensaje;
        public string modal_titulo;
        public string modal_tipo;
        public string modal_link;
        DataTable ListNom, DT_FINCA, DT_LECHE;
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
                ListNom = mod_proveedor.ConsultarProvedoresAll2();

                DT_FINCA = mod_finca.ConsultarFinca();
                Asig_Persona.DataValueField = "ID";
                Asig_Persona.DataTextField = "NOMBRE";
                Asig_Persona.DataSource = ListNom;
                Asig_Persona.DataBind();

                Drop_Finca.DataValueField = "ID_FINCA";
                Drop_Finca.DataTextField = "FIN_NOMBRE";
                Drop_Finca.DataSource = DT_FINCA;
                Drop_Finca.DataBind();

            }

        }

        protected void Btn_Save1_Click(object sender, EventArgs e)
        {
            string rol = 5+"";
            da.OperarDatos("INSERT INTO persona ('"+ced.Text+ "','" + nom1.Text + "','" + nom2.Text + "','" + ape1.Text + "','" + ape2.Text + "','" + Celular.Text + "','" + Fecha_Nacimiento.Text + "','" + Direc.Text + "','" + Detalle.Text + "','" + Convert.ToChar(DDL_Sexo.SelectedValue) + "') " +
                "INSERT INTO usuario ('"+correo.Text+"' ,'"+ contrasena.Text+"','"+ ced.Text+"','"+ rol + "');");
            //mod_proveedor.RegistrarProveedor(ced.Text, nom1.Text, nom2.Text, ape1.Text, ape2.Text, Celular.Text, Fecha_Nacimiento.Text, Direc.Text, Detalle.Text, Convert.ToChar(DDL_Sexo.SelectedValue), correo.Text, contrasena.Text);
            //mostrarModal("Datos guardados correctamente!", "Muy bien", "modal-success");
            Response.Redirect("~/Vistas/Private/Proveedor/ingresar_proveedor.aspx");
        }

        protected void Btn_Cerrar1_Click(object sender, EventArgs e)
        {
            ced.Text = null; nom1.Text = null; nom2.Text = null; ape1.Text = null; ape2.Text = null; Celular.Text = null; Fecha_Nacimiento.Text = null;
            Direc.Text = null; Detalle.Text = null; correo.Text = null; contrasena.Text = null;
        }
        protected void Save_Finca_Click(object sender, EventArgs e)
        {
            mod_finca.RegistrarFinca(nom_finca.Text, ubi_finca.Text, hectarias.Text, Convert.ToString(Asig_Persona.SelectedValue));
            //Response.Redirect("~/Vistas/Private/Proveedor/ingresar_proveedor.aspx");

            //}
        }
        protected void btn_Leche_Click(object sender, EventArgs e)
        {
            mod_finca.RegistrarFincaLenche(cant_leche.Text, FechaEn.Text, Convert.ToString(Drop_Finca.SelectedValue));
            //Response.Redirect("~/Vistas/Private/Proveedor/ingresar_proveedor.aspx");
        }

        protected void btn_Leche_cerrar_Click(object sender, EventArgs e)
        {
            cant_leche.Text = null;
            FechaEn.Text = null;
            Drop_Finca.ClearSelection();
        }

        protected void Remove_Finca_Click(object sender, EventArgs e)
        {
            nom_finca.Text = null;
            ubi_finca.Text = null;
            hectarias.Text = null;
            cap_leche.Text = null;
            Asig_Persona.ClearSelection();

        }

        protected void mostrarModal(string mensaje, string titulo, string tipo, string link = null)
        {
            modal_mensaje = mensaje;
            modal_titulo = titulo;
            modal_tipo = tipo;
            modal_link = link;
            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script1", "MostrarModal('modal-perfil');", true);
        }

        public bool ValidarDatos()
        {
            bool good = false;
            if (ced.Text.Length > 10)
                mostrarModal("Ingrese su documento de identidad correctamente!", "Error", "modal-danger");
            else if (ced.Text.Length == 0)
                mostrarModal("Campo vacio, por favor registre su documento de identidad!", "Error", "modal-danger");
            else if (nom1.Text.Length < 3)
                mostrarModal("Ingrese su nombre correctamente!", "Error", "modal-danger");
            else if (nom1.Text.Length == 0)
                mostrarModal("Campo vacio por favor ingrese su nombre correctamente!", "Error", "modal-danger");
            else if (nom1.Text.Length > 20)
                mostrarModal("Señor usuario acaba de exceder el limite peritido de caracteres: Error: Nombre 1", "Error", "modal-danger");
            else if (ape1.Text.Length < 3)
                mostrarModal("Ingrese su primer apellido correctamente!", "Error", "modal-danger");
            else if (ape1.Text.Length == 0)
                mostrarModal("Campo vacio por favor ingrese su primer apellido correctamente!", "Error", "modal-danger");
            else if (ape1.Text.Length > 20)
                mostrarModal("Señor usuario acaba de exceder el limite peritido de caracteres Error: Apellido 1", "Error", "modal-danger");
            else if (Celular.Text.Length < 3)
                mostrarModal("Ingrese un maximo de 10 numeros!", "Error", "modal-danger");
            else if (Celular.Text.Length == 0)
                mostrarModal("Campo vacio por favor ingrese su numero teléfonico correctamente!", "Error", "modal-danger");
            else if (Celular.Text.Length > 10)
                mostrarModal("Señor usuario acaba de exceder el limite perimitido por el campo de numero teléfonico: son 10 numeros", "Error", "modal-danger");
            else if (correo.Text.Length < 3 || correo.Text.Length == 0 || correo.Text.Length > 50)
                mostrarModal("Ingrese un correo electronico corectamente!", "Error", "modal-danger");
            else
                good = true;
            return good;
        }

        public bool ValidarDatosFinca()
        {
            bool good = false;
            if (nom_finca.Text.Length == 0 || nom_finca.Text.Length < 3 || nom_finca.Text.Length > 45)
                mostrarModal("Ingrese su documento de identidad correctamente!", "Error", "modal-danger");
            else if (ubi_finca.Text.Length == 0 || ubi_finca.Text.Length > 45 || ubi_finca.Text.Length < 3)
                mostrarModal("Ingrese su documento de identidad correctamente!", "Error", "modal-danger");
            else if (cap_leche.Text.Length == 0 || cap_leche.Text.Length > 45 || cap_leche.Text.Length < 3)
                mostrarModal("Ingrese su documento de identidad correctamente!", "Error", "modal-danger");
            else
                good = true;
            return good;
        }

    }
}