using _02_ClienteEscritorio.controlador;
using _02_ClienteEscritorio.vista;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace _02_ClienteEscritorio
{
    public partial class FormLogin : Form
    {
        private ControladorUsuario controladorUsuario;
        private ControladorSOAP controladorSOAP;

        public FormLogin(ControladorUsuario controladorUsuario, ControladorSOAP controladorSOAP)
        {
            InitializeComponent();
            
            this.controladorUsuario = controladorUsuario;
            this.controladorSOAP = controladorSOAP;
        }

        private void btnLogin_Click(object sender, System.EventArgs e)
        {
            string email = txtEmail.Text;
            string contraseña = txtContraseña.Text;

            if (controladorUsuario.AutenticarUsuario(email, contraseña))
            {
                this.Hide();
                //new FormPrincipal(controladorSOAP).Show();
                new FormPrincipal(controladorSOAP).Show();
            }
            else
            {
                MessageBox.Show("Credenciales inválidas. Intente de nuevo.");
            }
        }

        private void FormLogin_Load(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }
    }
}
