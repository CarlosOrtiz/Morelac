using Proyecto_Web.Conection;
using Proyecto_Web.Interface;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
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

        public bool RegistrarPersona(string NOM1, string NOM2, string APE1, string APE2, string CELULAR, string NACIMIENTO,string DIRECCION, string DETALLES, char SEXO){
            try{
                return dat.OperarDatos("INSERT INTO persona ('" + NOMBRE1 + "', '" + NOMBRE2 + "', '" + APELLIDO1 + "', '" + APELLIDO2 + "', '" + CELULAR + "', '" + NACIMIENTO + "', '" + DIRECCION + "', '" + DETALLES + "', '" + SEXO + "');");  
            }catch (Exception){
                return false;
            }
        }
        public DataTable ConsultarPersona(string Cedula){
            try{
                return dat.ConsultarDatos("CALL CONS_PERSONA ('" + Cedula + "');");
            }catch (Exception io){
                ESTRUCTURA2 err = new ESTRUCTURA2();
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