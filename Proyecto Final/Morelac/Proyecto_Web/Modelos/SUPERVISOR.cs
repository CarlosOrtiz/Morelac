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
    public class SUPERVISOR
    {
        private IDatos dat = new Datos();
        string NOM_SUPERVISOR;
        public SUPERVISOR()
        {
            NOM_SUPERVISOR = null;
        }
        public SUPERVISOR(string n)
        {
            NOM_SUPERVISOR = n;
        }
        public DataTable ConsultarSupervisorAll()
        {
            try
            {
                return dat.ConsultarDatos("CALL CONS_TODOS_SUPERVISORES ();");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }
        public DataTable ConsultarSupervisor_ID(string id)
        {
            try
            {
                return dat.ConsultarDatos("CALL CONS_SUPERVISOR_ID ('" + id + "');");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }
        public DataTable ConsultarSupervisorAll2()
        {
            try
            {
                return dat.ConsultarDatos("CALL CONS_SUPERVISOR_ALL ();");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }
    }
}