using Proyecto_Web.Interface;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Proyecto_Web.Modelos;
using Proyecto_Web.Conection;

namespace Proyecto_Web.Modelos
{
    public class USUARIO
    {
        private IDatos dat = new Datos();
        string USU_CORREO { set; get; }
        string USU_CONTRASENA { set; get; }

        public USUARIO()
        {
            USU_CONTRASENA = null;
            USU_CORREO = null;
        }

        public USUARIO(string con, string correo)
        {
            USU_CONTRASENA = con;
            USU_CORREO = correo;
        }
        public bool Registrarusuario(string correo, string contrasena, string persona){
            try
            {
                return dat.OperarDatos("CALL INSE_USUARIO ('" + correo + "', '" + contrasena + "','" + persona + "');");
            }
            catch (Exception)
            {
                return false;
            }

        }
        public DataTable ConsultarUsuarios(string correo, string contrasena)
        {
            try
            {
                return dat.ConsultarDatos("CALL CONS_USUARIO ('" + correo + "', '" + contrasena + "')");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }
        public DataTable ConsultarCant_Usuarios()
        {
            try
            {
                return dat.ConsultarDatos("CALL COUNT_USER ()");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }

        public bool Actualizar(string id,string contra,string estado,int rol)
        {
            try
            {
                return dat.OperarDatos("CALL UPDA_USUARIO ('" + id + "', '" + contra + "', '" + estado + "', '" + rol+ "')");
            }
            catch (Exception)
            {
                return false;
            }

        }
    }
}