using _02_ClienteEscritorio.controlador;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace _02_ClienteEscritorio
{
    internal static class Program
    {
        /// <summary>
        /// Punto de entrada principal para la aplicación.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            ControladorUsuario controladorUsuario = new ControladorUsuario();
            ControladorSOAP controladorSOAP = new ControladorSOAP();
            Application.Run(new FormLogin(controladorUsuario, controladorSOAP));
        }
    }
}
