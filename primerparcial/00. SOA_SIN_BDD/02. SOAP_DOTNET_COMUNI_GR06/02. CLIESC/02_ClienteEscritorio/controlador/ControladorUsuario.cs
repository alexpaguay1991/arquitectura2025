using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _02_ClienteEscritorio.controlador
{
    public class ControladorUsuario
    {
        private static readonly string usuarioQuemado = "MONSTER";
        private static readonly string contrasenaQuemada = "MONSTER9";

        public bool AutenticarUsuario(string email, string contraseña)
        {
            // Validar las credenciales quemadas
            return email == usuarioQuemado && contraseña == contrasenaQuemada;
        }
    }
}
