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
    public class CLIENTES
    {

        private IDatos dat = new Datos();
        public CLIENTES()
        {
        }

        public DataTable ConsultarClienteAll()
        {
            try
            {
                return dat.ConsultarDatos("CALL CONS_TODOS_CLIENTES ();");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }
    }
}