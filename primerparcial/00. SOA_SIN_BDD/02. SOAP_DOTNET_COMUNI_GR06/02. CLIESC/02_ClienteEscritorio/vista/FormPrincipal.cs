using _02_ClienteEscritorio.controlador;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace _02_ClienteEscritorio.vista
{
    public partial class FormPrincipal : Form
    {
        private ControladorSOAP controladorSOAP;

        public FormPrincipal(ControladorSOAP controladorSOAP)
        {
            InitializeComponent();
            this.pnlConversion.BackColor = Color.FromArgb(128, 255, 255, 255);
            this.controladorSOAP = controladorSOAP;
        }

        private void btnConvertirCmAPulgadas_Click(object sender, EventArgs e)
        {
            double centimetros = double.Parse(txtCentimetros.Text);
            double pulgadas = controladorSOAP.ConvertirCentimetrosAPulgadas(centimetros);
            txtPulgadas.Text = pulgadas.ToString();
        }


        private void btnConvertirPulgadasACm_Click_1(object sender, EventArgs e)
        {
            double pulgadas = double.Parse(txtPulgadas.Text);
            double centimetros = controladorSOAP.ConvertirPulgadasACentimetros(pulgadas);
            txtCentimetros.Text = centimetros.ToString();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();

        }
    }
}
