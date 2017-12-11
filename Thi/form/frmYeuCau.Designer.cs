namespace Thi
{
    partial class frmYeuCau
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
            this.btnGuiYeuCau = new System.Windows.Forms.Button();
            this.rtbYeuCau = new System.Windows.Forms.RichTextBox();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btnGuiYeuCau
            // 
            this.btnGuiYeuCau.BackColor = System.Drawing.Color.Honeydew;
            this.btnGuiYeuCau.ForeColor = System.Drawing.Color.DarkMagenta;
            this.btnGuiYeuCau.Location = new System.Drawing.Point(145, 212);
            this.btnGuiYeuCau.Name = "btnGuiYeuCau";
            this.btnGuiYeuCau.Size = new System.Drawing.Size(90, 29);
            this.btnGuiYeuCau.TabIndex = 2;
            this.btnGuiYeuCau.Text = "&Gửi";
            this.btnGuiYeuCau.UseVisualStyleBackColor = false;
            // 
            // rtbYeuCau
            // 
            this.rtbYeuCau.Location = new System.Drawing.Point(12, 55);
            this.rtbYeuCau.Name = "rtbYeuCau";
            this.rtbYeuCau.Size = new System.Drawing.Size(369, 122);
            this.rtbYeuCau.TabIndex = 3;
            this.rtbYeuCau.Text = "";
            this.rtbYeuCau.TextChanged += new System.EventHandler(this.rtbYeuCau_TextChanged);
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(67, 12);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(314, 22);
            this.textBox1.TabIndex = 4;
            this.textBox1.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 13);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(37, 17);
            this.label1.TabIndex = 5;
            this.label1.Text = "Tên ";
            // 
            // frmYeuCau
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.DarkSeaGreen;
            this.ClientSize = new System.Drawing.Size(393, 268);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.rtbYeuCau);
            this.Controls.Add(this.btnGuiYeuCau);
            this.Name = "frmYeuCau";
            this.Text = "frmYeuCau";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frmYeuCau_FormClosing);
            this.Load += new System.EventHandler(this.frmYeuCau_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Button btnGuiYeuCau;
        private System.Windows.Forms.RichTextBox rtbYeuCau;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label1;
    }
}