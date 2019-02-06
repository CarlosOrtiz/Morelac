using Proyecto_Web.Conection;
using Proyecto_Web.Interface;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Proyecto_Web.Modelos
{
    public class FINCA
    {
        private IDatos dat = new Datos();
        string FIN_NOMBRE { get; set; }
        string FIN_UBICACION { get; set; }
        string FIN_DIMENCION { get; set; }

        public FINCA()
        {
            FIN_NOMBRE = null;
            FIN_DIMENCION = null;
            FIN_UBICACION = null;

        }
        public FINCA(string nom, string dimencion, string ubicacion)
        {
            FIN_NOMBRE = nom;
            FIN_DIMENCION = dimencion;
            FIN_UBICACION = ubicacion;

        }
        public bool RegistrarFinca(string NOM, string DIM, string UBI, string ID_PERSONA)
        {
            try
            {
                return dat.OperarDatos("CALL INSE_FINCA ('" +NOM  + "', '" + DIM + "', '" + UBI + "', '" + ID_PERSONA + "');");
            }
            catch (Exception)
            {
                return false;
            }
        }
        public DataTable ConsultarFinca(string Cedula)
        {
            try
            {
                return dat.ConsultarDatos("CALL CONS_PERSONA ('" + Cedula + "');");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }
        public bool Actualizar(int id, string nom, string ape, string naci, char sexo, string num, string bio, string foto, string con, string estado)
        {
            try
            {
                return dat.OperarDatos("CALL UPDA_PERSONA ('" + id + "', '" + nom + "', '" + ape + "', '" + naci + "', '" + sexo + "', '" + num + "', '" + bio + "', '" + foto + "','" + con + "','" + estado + "');");
            }
            catch (Exception)
            {
                return false;
            }

        }
    }
}