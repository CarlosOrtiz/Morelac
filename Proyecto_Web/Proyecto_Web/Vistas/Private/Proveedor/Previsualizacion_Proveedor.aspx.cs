﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_Web.Modelos;
using System.Data;

namespace Proyecto_Web.Vistas.Private.Proveedor
{
    public partial class Previsualizacion_Proveedor : System.Web.UI.Page
    {
        PROVEEDOR mod_proveedor = new PROVEEDOR();
        DataTable DT_Proveedor;
        protected void Page_Load(object sender, EventArgs e)
        {
            DT_Proveedor = mod_proveedor.ConsultarProvedores_ID(Convert.ToString(Request.QueryString["Valor"]));

            Nombre.Text = DT_Proveedor.Rows[0]["NOMBRE"].ToString();
            Cedula.Text = DT_Proveedor.Rows[0]["CEDULA"].ToString();
            Celular.Text = DT_Proveedor.Rows[0]["CELULAR"].ToString();
            Direc.Text = DT_Proveedor.Rows[0]["DIRECCION"].ToString();
            FincaNom.Text = DT_Proveedor.Rows[0]["FIN_NOMBRE"].ToString();
            Cant_En.Text = DT_Proveedor.Rows[0]["CANT_LECHE"].ToString();
            Fecha.Text = DT_Proveedor.Rows[0]["LEC_FECHA"].ToString();
            Estado.Text = DT_Proveedor.Rows[0]["ESTADO"].ToString();
            Descripcion.Text = DT_Proveedor.Rows[0]["DETALLE"].ToString();
            Img_Persona.ImageUrl = DT_Proveedor.Rows[0]["FOTO"].ToString();
        }
    }
}