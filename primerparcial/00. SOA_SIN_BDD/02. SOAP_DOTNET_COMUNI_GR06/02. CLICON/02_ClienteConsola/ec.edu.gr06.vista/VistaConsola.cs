using _02_ClienteConsola.ec.edu.gr06.controlador;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _02_ClienteConsola.ec.edu.gr06.vista
{
    public class VistaConsola
    {
        private ControladorUsuario controladorUsuario;
        private ControladorSOAP controladorSOAP;

        public VistaConsola(ControladorUsuario controladorUsuario, ControladorSOAP controladorSOAP)
        {
            this.controladorUsuario = controladorUsuario;
            this.controladorSOAP = controladorSOAP;
        }

        public bool MostrarPantallaLogin()
        {
            Console.WriteLine("CHICANGO - PAGUAY - SAÑAY");
            Console.WriteLine("Ingrese sus credenciales:");
            Console.Write("Email: ");
            string email = Console.ReadLine();
            Console.Write("Contraseña: ");
            string contraseña = Console.ReadLine();

            return controladorUsuario.AutenticarUsuario(email, contraseña);
        }

        public void MostrarMenuPrincipal()
        {
            bool salir = false;
            while (!salir)
            {
                Console.Clear();
                Console.WriteLine("CHICANGO - PAGUAY - SAÑAY");
                Console.WriteLine("Menú Principal:");
                Console.WriteLine("1. Convertir centímetros a pulgadas");
                Console.WriteLine("2. Convertir pulgadas a centímetros");
                Console.WriteLine("3. Salir");
                Console.Write("Seleccione una opción: ");
                string opcion = Console.ReadLine();

                switch (opcion)
                {
                    case "1":
                        Console.Write("Ingrese los centímetros: ");
                        double centimetros = double.Parse(Console.ReadLine());
                        double pulgadas = controladorSOAP.ConvertirCentimetrosAPulgadas(centimetros);
                        Console.WriteLine($"{centimetros} cm = {pulgadas} in");
                        Console.ReadLine();
                        break;
                    case "2":
                        Console.Write("Ingrese las pulgadas: ");
                        double pulgadasInput = double.Parse(Console.ReadLine());
                        double centimetrosOutput = controladorSOAP.ConvertirPulgadasACentimetros(pulgadasInput);
                        Console.WriteLine($"{pulgadasInput} in = {centimetrosOutput} cm");
                        Console.ReadLine();
                        break;
                    case "3":
                        salir = true;
                        break;
                    default:
                        Console.WriteLine("Opción inválida. Presione Enter para continuar.");
                        Console.ReadLine();
                        break;
                }
            }
        }
    }
}


