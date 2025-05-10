using ConUni_Soap_Java_Gr06.ec.edu.gr06.controlador;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace ConUni_Soap_Java_Gr06
{
    /// <summary>
    /// Descripción breve de WSConUni
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class WSConUni : System.Web.Services.WebService
    {

        private Conversion conversion = new Conversion();
        [WebMethod]
        public double ConvertirCentimetrosAPulgadas(double centimetros)
        {
            return conversion.centimetrosAPulgadas(centimetros);
        }

        [WebMethod]
        public double ConvertirPulgadasACentimetros(double pulgadas)
        {
            return conversion.pulgadasACentimetros(pulgadas);
        }
    }
}
