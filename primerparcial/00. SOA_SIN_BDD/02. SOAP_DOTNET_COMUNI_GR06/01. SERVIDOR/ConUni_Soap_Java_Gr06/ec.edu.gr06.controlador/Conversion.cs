using ConUni_Soap_Java_Gr06.ec.edu.gr06.modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConUni_Soap_Java_Gr06.ec.edu.gr06.controlador
{
    public class Conversion : IConversion
    {
        public double centimetrosAPulgadas(double centimetros)
        {
            // 1 centímetro = 0.393701 pulgadas
            return centimetros * 0.393701;
        }

        public double pulgadasACentimetros(double pulgadas)
        {
            // 1 pulgada = 2.54 centímetros
            return pulgadas * 2.54;
        }
    }
}