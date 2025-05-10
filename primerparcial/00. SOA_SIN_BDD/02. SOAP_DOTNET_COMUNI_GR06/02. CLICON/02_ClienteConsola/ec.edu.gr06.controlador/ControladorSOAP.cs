using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _02_ClienteConsola.ec.edu.gr06.controlador
{
    public class ControladorSOAP
    {
        // Crear una instancia del cliente del servicio SOAP
        private readonly localhost.WSConUni client = new localhost.WSConUni();


        public double ConvertirCentimetrosAPulgadas(double centimetros)
        {
            // Lógica de conversión de centímetros a pulgadas
            return client.ConvertirCentimetrosAPulgadas(centimetros);
        }

        public double ConvertirPulgadasACentimetros(double pulgadas)
        {
            // Lógica de conversión de pulgadas a centímetros
            return client.ConvertirPulgadasACentimetros(pulgadas);
        }
    }
}
