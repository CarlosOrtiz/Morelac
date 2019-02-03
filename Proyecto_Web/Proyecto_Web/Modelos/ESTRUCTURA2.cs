using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Proyecto_Web.Modelos
{
    public class ESTRUCTURA2
    {
        DataTable Err = new DataTable();
        /// <summary>
        /// 
        /// </summary>
        public ESTRUCTURA2()
        {
            Err = new DataTable();
        }
        /// <summary>
        /// Code Error
        /// </summary>
        /// <param name="code"></param>
        /// <returns></returns>
        public DataTable GetError(string code)
        {
            Err.Clear();
            Err.Columns.Add("TIPO");
            Err.Columns.Add("MENSAJE");
            Object[] Para = { "1", "Error: fatal en los servicios, código de error: " + code };
            Err.Rows.Add(Para);
            return Err;
        }
    }
}