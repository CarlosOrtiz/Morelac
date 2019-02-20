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

        public SUPERVISOR()
        {
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
    }
    }