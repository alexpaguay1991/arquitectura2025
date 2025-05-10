using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _02_ClienteEscritorio.controlador
{
    public class ControladorSOAP
    {
        private readonly ConversionUnidades.WSConUni cliente= new ConversionUnidades.WSConUni();
        public double ConvertirCentimetrosAPulgadas(double centimetros)
        {
            // Lógica de conversión de centímetros a pulgadas
            return cliente.ConvertirCentimetrosAPulgadas(centimetros);
        }

        public double ConvertirPulgadasACentimetros(double pulgadas)
        {
            // Lógica de conversión de pulgadas a centímetros
            return cliente.ConvertirPulgadasACentimetros(pulgadas);
        }
    }
}
