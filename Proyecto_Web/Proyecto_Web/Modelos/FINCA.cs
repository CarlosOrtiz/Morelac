using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto_Web.Modelos
{
    public class FINCA
    {
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

    }
}