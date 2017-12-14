namespace Thi
{
    partial class frmPre_Test
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.btnThi = new System.Windows.Forms.Button();
            this.cmbMucDo = new System.Windows.Forms.ComboBox();
            this.cmbSoCau = new System.Windows.Forms.ComboBox();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.hướngDẫnToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.quảnLýToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.phảnHồiToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(40, 55);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(44, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Mức độ";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(42, 109);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(41, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Số câu";
            // 
            // btnThi
            // 
            this.btnThi.Location = new System.Drawing.Point(100, 168);
            this.btnThi.Margin = new System.Windows.Forms.Padding(2);
            this.btnThi.Name = "btnThi";
            this.btnThi.Size = new System.Drawing.Size(62, 24);
            this.btnThi.TabIndex = 2;
            this.btnThi.Text = "&Thi";
            this.btnThi.UseVisualStyleBackColor = true;
            this.btnThi.Click += new System.EventHandler(this.button1_Click);
            // 
            // cmbMucDo
            // 
            this.cmbMucDo.FormattingEnabled = true;
            this.cmbMucDo.Items.AddRange(new object[] {
            "Dễ",
            "Trung Bình",
            "Khó"});
            this.cmbMucDo.Location = new System.Drawing.Point(110, 52);
            this.cmbMucDo.Margin = new System.Windows.Forms.Padding(2);
            this.cmbMucDo.Name = "cmbMucDo";
            this.cmbMucDo.Size = new System.Drawing.Size(92, 21);
            this.cmbMucDo.TabIndex = 3;
            // 
            // cmbSoCau
            // 
            this.cmbSoCau.FormattingEnabled = true;
            this.cmbSoCau.Items.AddRange(new object[] {
            "20",
            "50",
            "100"});
            this.cmbSoCau.Location = new System.Drawing.Point(110, 106);
            this.cmbSoCau.Margin = new System.Windows.Forms.Padding(2);
            this.cmbSoCau.Name = "cmbSoCau";
            this.cmbSoCau.Size = new System.Drawing.Size(92, 21);
            this.cmbSoCau.TabIndex = 4;
            // 
            // menuStrip1
            // 
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.hướngDẫnToolStripMenuItem,
            this.quảnLýToolStripMenuItem,
            this.phảnHồiToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Padding = new System.Windows.Forms.Padding(4, 2, 0, 2);
            this.menuStrip1.Size = new System.Drawing.Size(264, 24);
            this.menuStrip1.TabIndex = 5;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // hướngDẫnToolStripMenuItem
            // 
            this.hướngDẫnToolStripMenuItem.Name = "hướngDẫnToolStripMenuItem";
            this.hướngDẫnToolStripMenuItem.Size = new System.Drawing.Size(80, 20);
            this.hướngDẫnToolStripMenuItem.Text = "Hướng Dẫn";
            // 
            // quảnLýToolStripMenuItem
            // 
            this.quảnLýToolStripMenuItem.Name = "quảnLýToolStripMenuItem";
            this.quảnLýToolStripMenuItem.Size = new System.Drawing.Size(62, 20);
            this.quảnLýToolStripMenuItem.Text = "Quản Lý";
            this.quảnLýToolStripMenuItem.Click += new System.EventHandler(this.quảnLýToolStripMenuItem_Click);
            // 
            // phảnHồiToolStripMenuItem
            // 
            this.phảnHồiToolStripMenuItem.Name = "phảnHồiToolStripMenuItem";
            this.phảnHồiToolStripMenuItem.Size = new System.Drawing.Size(68, 20);
            this.phảnHồiToolStripMenuItem.Text = "Phản Hồi";
            this.phảnHồiToolStripMenuItem.Click += new System.EventHandler(this.phảnHồiToolStripMenuItem_Click);
            // 
            // frmPre_Test
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.DarkSeaGreen;
            this.ClientSize = new System.Drawing.Size(264, 224);
            this.Controls.Add(this.cmbSoCau);
            this.Controls.Add(this.cmbMucDo);
            this.Controls.Add(this.btnThi);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.menuStrip1);
            this.MainMenuStrip = this.menuStrip1;
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "frmPre_Test";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Chọn kiểu thi";
            this.Load += new System.EventHandler(this.frmPre_Test_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnThi;
        private System.Windows.Forms.ComboBox cmbMucDo;
        private System.Windows.Forms.ComboBox cmbSoCau;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem hướngDẫnToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem quảnLýToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem phảnHồiToolStripMenuItem;
    }
}