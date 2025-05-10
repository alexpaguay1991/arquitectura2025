using _02_ClienteConsola.ec.edu.gr06.controlador;
using _02_ClienteConsola.ec.edu.gr06.vista;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _02_ClienteConsola
{
    internal class Program
    {
        static void Main(string[] args)
        {
            ControladorUsuario controladorUsuario = new ControladorUsuario();
            ControladorSOAP controladorSOAP = new ControladorSOAP();
            VistaConsola vista = new VistaConsola(controladorUsuario, controladorSOAP);

            if (vista.MostrarPantallaLogin())
            {
                vista.MostrarMenuPrincipal();
            }
        }
    }
}
