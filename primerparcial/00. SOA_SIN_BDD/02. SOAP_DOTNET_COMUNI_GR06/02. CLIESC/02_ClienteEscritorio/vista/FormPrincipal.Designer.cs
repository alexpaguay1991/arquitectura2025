namespace _02_ClienteEscritorio.vista
{
    partial class FormPrincipal
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.txtPulgadas = new System.Windows.Forms.TextBox();
            this.txtCentimetros = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.btnConvertirCmAPulgadas = new System.Windows.Forms.Button();
            this.btnConvertirPulgadasACm = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.pnlConversion = new System.Windows.Forms.Panel();
            this.label3 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.pnlConversion.SuspendLayout();
            this.SuspendLayout();
            // 
            // txtPulgadas
            // 
            this.txtPulgadas.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtPulgadas.Location = new System.Drawing.Point(73, 193);
            this.txtPulgadas.Name = "txtPulgadas";
            this.txtPulgadas.Size = new System.Drawing.Size(299, 34);
            this.txtPulgadas.TabIndex = 0;
            // 
            // txtCentimetros
            // 
            this.txtCentimetros.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtCentimetros.Location = new System.Drawing.Point(73, 90);
            this.txtCentimetros.Name = "txtCentimetros";
            this.txtCentimetros.Size = new System.Drawing.Size(299, 34);
            this.txtCentimetros.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Font = new System.Drawing.Font("Arial Narrow", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.Black;
            this.label1.Location = new System.Drawing.Point(170, 63);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(106, 24);
            this.label1.TabIndex = 2;
            this.label1.Text = "Centímetros:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.Font = new System.Drawing.Font("Arial Narrow", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.Black;
            this.label2.Location = new System.Drawing.Point(181, 166);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(82, 24);
            this.label2.TabIndex = 3;
            this.label2.Text = "Pulgadas:";
            // 
            // btnConvertirCmAPulgadas
            // 
            this.btnConvertirCmAPulgadas.BackColor = System.Drawing.Color.DodgerBlue;
            this.btnConvertirCmAPulgadas.Font = new System.Drawing.Font("Arial Narrow", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnConvertirCmAPulgadas.ForeColor = System.Drawing.Color.White;
            this.btnConvertirCmAPulgadas.Location = new System.Drawing.Point(108, 127);
            this.btnConvertirCmAPulgadas.Margin = new System.Windows.Forms.Padding(0);
            this.btnConvertirCmAPulgadas.Name = "btnConvertirCmAPulgadas";
            this.btnConvertirCmAPulgadas.Size = new System.Drawing.Size(243, 39);
            this.btnConvertirCmAPulgadas.TabIndex = 4;
            this.btnConvertirCmAPulgadas.Text = "Convertir a Pulgadas";
            this.btnConvertirCmAPulgadas.UseVisualStyleBackColor = false;
            this.btnConvertirCmAPulgadas.Click += new System.EventHandler(this.btnConvertirCmAPulgadas_Click);
            // 
            // btnConvertirPulgadasACm
            // 
            this.btnConvertirPulgadasACm.BackColor = System.Drawing.Color.DodgerBlue;
            this.btnConvertirPulgadasACm.Font = new System.Drawing.Font("Arial Narrow", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnConvertirPulgadasACm.ForeColor = System.Drawing.Color.White;
            this.btnConvertirPulgadasACm.Location = new System.Drawing.Point(108, 233);
            this.btnConvertirPulgadasACm.Name = "btnConvertirPulgadasACm";
            this.btnConvertirPulgadasACm.Size = new System.Drawing.Size(243, 40);
            this.btnConvertirPulgadasACm.TabIndex = 5;
            this.btnConvertirPulgadasACm.Text = "Convertir a Centímetros";
            this.btnConvertirPulgadasACm.UseVisualStyleBackColor = false;
            this.btnConvertirPulgadasACm.Click += new System.EventHandler(this.btnConvertirPulgadasACm_Click_1);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::_02_ClienteEscritorio.Properties.Resources.Espe_Sangolgui;
            this.pictureBox1.Location = new System.Drawing.Point(-1, 2);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(826, 473);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 6;
            this.pictureBox1.TabStop = false;
            // 
            // pnlConversion
            // 
            this.pnlConversion.BackColor = System.Drawing.Color.Transparent;
            this.pnlConversion.Controls.Add(this.button1);
            this.pnlConversion.Controls.Add(this.txtPulgadas);
            this.pnlConversion.Controls.Add(this.label2);
            this.pnlConversion.Controls.Add(this.label3);
            this.pnlConversion.Controls.Add(this.label1);
            this.pnlConversion.Controls.Add(this.txtCentimetros);
            this.pnlConversion.Controls.Add(this.btnConvertirCmAPulgadas);
            this.pnlConversion.Controls.Add(this.btnConvertirPulgadasACm);
            this.pnlConversion.Location = new System.Drawing.Point(183, 26);
            this.pnlConversion.Name = "pnlConversion";
            this.pnlConversion.Padding = new System.Windows.Forms.Padding(100, 10, 10, 10);
            this.pnlConversion.Size = new System.Drawing.Size(460, 383);
            this.pnlConversion.TabIndex = 7;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.Transparent;
            this.label3.Font = new System.Drawing.Font("Arial", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.Black;
            this.label3.Location = new System.Drawing.Point(85, 24);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(287, 27);
            this.label3.TabIndex = 6;
            this.label3.Text = "Conversión de Unidades";
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.Color.DodgerBlue;
            this.button1.Font = new System.Drawing.Font("Arial Narrow", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.ForeColor = System.Drawing.Color.White;
            this.button1.Location = new System.Drawing.Point(108, 316);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(243, 40);
            this.button1.TabIndex = 7;
            this.button1.Text = "Cerrar Sesión";
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // FormPrincipal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(825, 473);
            this.Controls.Add(this.pnlConversion);
            this.Controls.Add(this.pictureBox1);
            this.Name = "FormPrincipal";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Conversión de Unidades";
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.pnlConversion.ResumeLayout(false);
            this.pnlConversion.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TextBox txtPulgadas;
        private System.Windows.Forms.TextBox txtCentimetros;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnConvertirCmAPulgadas;
        private System.Windows.Forms.Button btnConvertirPulgadasACm;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Panel pnlConversion;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button button1;
    }
}