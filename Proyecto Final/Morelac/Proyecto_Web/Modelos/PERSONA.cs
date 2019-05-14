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
    public class PERSONA
    {
        private IDatos dat = new Datos();

        int ID_CEDULA { set; get; }
        string NOMBRE1 { set; get; }
        string NOMBRE2 { set; get; }
        string APELLIDO1 { set; get; }
        string APELLIDO2 { set; get; }
        int CELULAR { set; get; }
        string FECHA_NACIMIENTO { set; get; }
        string DIRRECCION { set; get; }
        string DETALLES { set; get; }
        char SEXO { set; get; }

        public PERSONA()
        {
            ID_CEDULA = 0;
            NOMBRE1 = null;
            NOMBRE2 = null;
            APELLIDO1 = null;
            APELLIDO2 = null;
            CELULAR = 0;
            FECHA_NACIMIENTO = null;
            DIRRECCION = null;
            DETALLES = null;
            SEXO = '0';
        }

        public PERSONA( int iD_CEDULA, string nOMBRE1, string nOMBRE2, string aPELLIDO1, string aPELLIDO2, int cELULAR, string fECHA_NACIMIENTO, string dIRRECCION, string dETALLES, char sEXO)
        {
            ID_CEDULA = iD_CEDULA;
            NOMBRE1 = nOMBRE1;
            NOMBRE2 = nOMBRE2;
            APELLIDO1 = aPELLIDO1;
            APELLIDO2 = aPELLIDO2;
            CELULAR = cELULAR;
            FECHA_NACIMIENTO = fECHA_NACIMIENTO;
            DIRRECCION = dIRRECCION;
            DETALLES = dETALLES;
            SEXO = sEXO;
        }

        public bool RegistrarPersona(string cedula,string NOM1, string APE1, string CELULAR, char SEXO,string correo,string contrasena,string rol){
            try{
                return dat.OperarDatos("CALL INSE_PERSONA ('" + cedula + "', '" + NOM1 +  "', '" + APE1 + "', '" + CELULAR + "', '" + SEXO + "', '" + correo + "', '"+ contrasena + "', '" + rol + "');");
            }
            catch (Exception){
                return false;
            }
        }
        public DataTable ConsultarPersona(string correo){
            try{
                return dat.ConsultarDatos("CALL CONS_PERSONA ('" + correo + "');");
            }
            catch (Exception io){
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }
        public DataTable ConsultarPersona_ALL()
        {
            try
            {
                return dat.ConsultarDatos("CALL CONS_PERSONA_ALL ();");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }
        public bool Actualizar(int id, string nom, string ape, string naci, char sexo, string num, string bio, string foto, string con, string estado)
        {
            try{
                return dat.OperarDatos("CALL UPDA_PERSONA ('" + id + "', '" + nom + "', '" + ape + "', '" + naci + "', '" + sexo + "', '" + num + "', '" + bio + "', '" + foto + "','" + con + "','" + estado + "');");
            }catch (Exception){
                return false;
            }

        }
    }
}