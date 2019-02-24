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
    public class PROVEEDOR
    {
        private IDatos dat = new Datos();
        string NOM_PROVEEDOR;
        public PROVEEDOR()
        {
            NOM_PROVEEDOR = null;
        }
        public PROVEEDOR(string n)
        {
            NOM_PROVEEDOR = n;
        }
        public DataTable ConsultarProvedoresAll()
        {
            try
            {
                return dat.ConsultarDatos("CALL CONS_TODOS_PROVEEDORES ();");
            }
            catch (Exception io)
            {
                estructura err = new estructura();
                return err.GetError(io.Message);
            }
        }
    }
}