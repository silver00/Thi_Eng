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
            this.SuspendLayout();
            // 
            // btnGuiYeuCau
            // 
            this.btnGuiYeuCau.Location = new System.Drawing.Point(144, 179);
            this.btnGuiYeuCau.Name = "btnGuiYeuCau";
            this.btnGuiYeuCau.Size = new System.Drawing.Size(90, 29);
            this.btnGuiYeuCau.TabIndex = 2;
            this.btnGuiYeuCau.Text = "&Gửi";
            this.btnGuiYeuCau.UseVisualStyleBackColor = true;
            // 
            // rtbYeuCau
            // 
            this.rtbYeuCau.Location = new System.Drawing.Point(12, 25);
            this.rtbYeuCau.Name = "rtbYeuCau";
            this.rtbYeuCau.Size = new System.Drawing.Size(369, 122);
            this.rtbYeuCau.TabIndex = 3;
            this.rtbYeuCau.Text = "";
            // 
            // frmYeuCau
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(393, 230);
            this.Controls.Add(this.rtbYeuCau);
            this.Controls.Add(this.btnGuiYeuCau);
            this.Name = "frmYeuCau";
            this.Text = "frmYeuCau";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frmYeuCau_FormClosing);
            this.Load += new System.EventHandler(this.frmYeuCau_Load);
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Button btnGuiYeuCau;
        private System.Windows.Forms.RichTextBox rtbYeuCau;
    }
}