using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _02_ClienteConsola.ec.edu.gr06.controlador
{
    public class ControladorUsuario
    {
        private static readonly string usuarioQuemado = "admin@gmail.com";
        private static readonly string contrasenaQuemada = "password";

        public bool AutenticarUsuario(string email, string contraseña)
        {
            // Validar las credenciales quemadas
            return email == usuarioQuemado && contraseña == contrasenaQuemada;
        }
    }
}
