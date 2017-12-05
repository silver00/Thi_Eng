namespace Thi
{
    partial class frmThi
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
            this.components = new System.ComponentModel.Container();
            this.panel1 = new System.Windows.Forms.Panel();
            this.dgvListCauHoi = new System.Windows.Forms.DataGridView();
            this.Column1 = new System.Windows.Forms.DataGridViewButtonColumn();
            this.panel2 = new System.Windows.Forms.Panel();
            this.Clock = new System.Windows.Forms.Label();
            this.panel3 = new System.Windows.Forms.Panel();
            this.btnPause = new System.Windows.Forms.Button();
            this.btnDapAn = new System.Windows.Forms.Button();
            this.btnKetQua = new System.Windows.Forms.Button();
            this.panel4 = new System.Windows.Forms.Panel();
            this.button7 = new System.Windows.Forms.Button();
            this.btnOpenYeuCau = new System.Windows.Forms.Button();
            this.HienCauHoi = new System.Windows.Forms.RichTextBox();
            this.panel5 = new System.Windows.Forms.Panel();
            this.btnPre = new System.Windows.Forms.Button();
            this.btnNext = new System.Windows.Forms.Button();
            this.rbDapAn_D = new System.Windows.Forms.RadioButton();
            this.rbDapAn_C = new System.Windows.Forms.RadioButton();
            this.rbDapAn_B = new System.Windows.Forms.RadioButton();
            this.rbDapAn_A = new System.Windows.Forms.RadioButton();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvListCauHoi)).BeginInit();
            this.panel2.SuspendLayout();
            this.panel3.SuspendLayout();
            this.panel4.SuspendLayout();
            this.panel5.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.panel1.Controls.Add(this.dgvListCauHoi);
            this.panel1.Controls.Add(this.panel2);
            this.panel1.Location = new System.Drawing.Point(12, 12);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(179, 465);
            this.panel1.TabIndex = 5;
            // 
            // dgvListCauHoi
            // 
            this.dgvListCauHoi.AllowUserToAddRows = false;
            this.dgvListCauHoi.AllowUserToDeleteRows = false;
            this.dgvListCauHoi.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.dgvListCauHoi.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvListCauHoi.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1});
            this.dgvListCauHoi.Location = new System.Drawing.Point(4, 126);
            this.dgvListCauHoi.Name = "dgvListCauHoi";
            this.dgvListCauHoi.ReadOnly = true;
            this.dgvListCauHoi.RowTemplate.Height = 24;
            this.dgvListCauHoi.Size = new System.Drawing.Size(172, 336);
            this.dgvListCauHoi.TabIndex = 1;
            // 
            // Column1
            // 
            this.Column1.HeaderText = "Danh Sách";
            this.Column1.Name = "Column1";
            this.Column1.ReadOnly = true;
            // 
            // panel2
            // 
            this.panel2.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.panel2.Controls.Add(this.Clock);
            this.panel2.Location = new System.Drawing.Point(1, 3);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(178, 119);
            this.panel2.TabIndex = 0;
            // 
            // Clock
            // 
            this.Clock.AutoSize = true;
            this.Clock.Font = new System.Drawing.Font("Microsoft Sans Serif", 28.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Clock.Location = new System.Drawing.Point(13, 31);
            this.Clock.Name = "Clock";
            this.Clock.Size = new System.Drawing.Size(145, 55);
            this.Clock.TabIndex = 0;
            this.Clock.Text = "11:00";
            // 
            // panel3
            // 
            this.panel3.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.panel3.Controls.Add(this.btnPause);
            this.panel3.Controls.Add(this.btnDapAn);
            this.panel3.Controls.Add(this.btnKetQua);
            this.panel3.Location = new System.Drawing.Point(985, 249);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(200, 182);
            this.panel3.TabIndex = 6;
            // 
            // btnPause
            // 
            this.btnPause.Location = new System.Drawing.Point(40, 116);
            this.btnPause.Name = "btnPause";
            this.btnPause.Size = new System.Drawing.Size(125, 39);
            this.btnPause.TabIndex = 11;
            this.btnPause.Text = "&Pause";
            this.btnPause.UseVisualStyleBackColor = true;
            // 
            // btnDapAn
            // 
            this.btnDapAn.Location = new System.Drawing.Point(40, 73);
            this.btnDapAn.Name = "btnDapAn";
            this.btnDapAn.Size = new System.Drawing.Size(125, 39);
            this.btnDapAn.TabIndex = 10;
            this.btnDapAn.Text = "&Xem Đáp Án";
            this.btnDapAn.UseVisualStyleBackColor = true;
            // 
            // btnKetQua
            // 
            this.btnKetQua.Location = new System.Drawing.Point(40, 31);
            this.btnKetQua.Name = "btnKetQua";
            this.btnKetQua.Size = new System.Drawing.Size(125, 39);
            this.btnKetQua.TabIndex = 0;
            this.btnKetQua.Text = "&Xem Kết Quả";
            this.btnKetQua.UseVisualStyleBackColor = true;
            // 
            // panel4
            // 
            this.panel4.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panel4.Controls.Add(this.button7);
            this.panel4.Controls.Add(this.btnOpenYeuCau);
            this.panel4.Location = new System.Drawing.Point(985, 12);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(200, 150);
            this.panel4.TabIndex = 7;
            // 
            // button7
            // 
            this.button7.Location = new System.Drawing.Point(40, 74);
            this.button7.Name = "button7";
            this.button7.Size = new System.Drawing.Size(125, 45);
            this.button7.TabIndex = 1;
            this.button7.Text = "&Phản Hồi";
            this.button7.UseVisualStyleBackColor = true;
            // 
            // btnOpenYeuCau
            // 
            this.btnOpenYeuCau.Location = new System.Drawing.Point(40, 22);
            this.btnOpenYeuCau.Name = "btnOpenYeuCau";
            this.btnOpenYeuCau.Size = new System.Drawing.Size(125, 45);
            this.btnOpenYeuCau.TabIndex = 0;
            this.btnOpenYeuCau.Text = "&Gửi Yêu Cầu";
            this.btnOpenYeuCau.UseVisualStyleBackColor = true;
            this.btnOpenYeuCau.Click += new System.EventHandler(this.button6_Click);
            // 
            // HienCauHoi
            // 
            this.HienCauHoi.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.HienCauHoi.Location = new System.Drawing.Point(243, 12);
            this.HienCauHoi.Name = "HienCauHoi";
            this.HienCauHoi.Size = new System.Drawing.Size(698, 242);
            this.HienCauHoi.TabIndex = 10;
            this.HienCauHoi.Text = "";
            // 
            // panel5
            // 
            this.panel5.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panel5.Controls.Add(this.btnPre);
            this.panel5.Controls.Add(this.btnNext);
            this.panel5.Controls.Add(this.rbDapAn_D);
            this.panel5.Controls.Add(this.rbDapAn_C);
            this.panel5.Controls.Add(this.rbDapAn_B);
            this.panel5.Controls.Add(this.rbDapAn_A);
            this.panel5.Location = new System.Drawing.Point(243, 280);
            this.panel5.Name = "panel5";
            this.panel5.Size = new System.Drawing.Size(698, 197);
            this.panel5.TabIndex = 11;
            // 
            // btnPre
            // 
            this.btnPre.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(192)))), ((int)(((byte)(255)))));
            this.btnPre.BackgroundImage = global::Thi.Properties.Resources.if_forward_1265691;
            this.btnPre.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnPre.Location = new System.Drawing.Point(268, 156);
            this.btnPre.Name = "btnPre";
            this.btnPre.Size = new System.Drawing.Size(58, 38);
            this.btnPre.TabIndex = 15;
            this.btnPre.UseVisualStyleBackColor = false;
            // 
            // btnNext
            // 
            this.btnNext.BackgroundImage = global::Thi.Properties.Resources.if_forward_126569;
            this.btnNext.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnNext.Location = new System.Drawing.Point(332, 156);
            this.btnNext.Name = "btnNext";
            this.btnNext.Size = new System.Drawing.Size(58, 38);
            this.btnNext.TabIndex = 14;
            this.btnNext.UseVisualStyleBackColor = true;
            // 
            // rbDapAn_D
            // 
            this.rbDapAn_D.AutoSize = true;
            this.rbDapAn_D.Location = new System.Drawing.Point(436, 68);
            this.rbDapAn_D.Name = "rbDapAn_D";
            this.rbDapAn_D.Size = new System.Drawing.Size(110, 21);
            this.rbDapAn_D.TabIndex = 13;
            this.rbDapAn_D.TabStop = true;
            this.rbDapAn_D.Text = "radioButton4";
            this.rbDapAn_D.UseVisualStyleBackColor = true;
            // 
            // rbDapAn_C
            // 
            this.rbDapAn_C.AutoSize = true;
            this.rbDapAn_C.Location = new System.Drawing.Point(103, 68);
            this.rbDapAn_C.Name = "rbDapAn_C";
            this.rbDapAn_C.Size = new System.Drawing.Size(110, 21);
            this.rbDapAn_C.TabIndex = 12;
            this.rbDapAn_C.TabStop = true;
            this.rbDapAn_C.Text = "radioButton3";
            this.rbDapAn_C.UseVisualStyleBackColor = true;
            // 
            // rbDapAn_B
            // 
            this.rbDapAn_B.AutoSize = true;
            this.rbDapAn_B.Location = new System.Drawing.Point(436, 18);
            this.rbDapAn_B.Name = "rbDapAn_B";
            this.rbDapAn_B.Size = new System.Drawing.Size(110, 21);
            this.rbDapAn_B.TabIndex = 11;
            this.rbDapAn_B.TabStop = true;
            this.rbDapAn_B.Text = "radioButton2";
            this.rbDapAn_B.UseVisualStyleBackColor = true;
            // 
            // rbDapAn_A
            // 
            this.rbDapAn_A.AutoSize = true;
            this.rbDapAn_A.Location = new System.Drawing.Point(103, 18);
            this.rbDapAn_A.Name = "rbDapAn_A";
            this.rbDapAn_A.Size = new System.Drawing.Size(110, 21);
            this.rbDapAn_A.TabIndex = 10;
            this.rbDapAn_A.TabStop = true;
            this.rbDapAn_A.Text = "radioButton1";
            this.rbDapAn_A.UseVisualStyleBackColor = true;
            // 
            // timer1
            // 
            this.timer1.Interval = 1000;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // frmThi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(192)))), ((int)(((byte)(255)))));
            this.ClientSize = new System.Drawing.Size(1221, 489);
            this.Controls.Add(this.panel5);
            this.Controls.Add(this.HienCauHoi);
            this.Controls.Add(this.panel4);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel1);
            this.Name = "frmThi";
            this.Text = "Thi";
            this.Load += new System.EventHandler(this.frmThi_Load);
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvListCauHoi)).EndInit();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.panel3.ResumeLayout(false);
            this.panel4.ResumeLayout(false);
            this.panel5.ResumeLayout(false);
            this.panel5.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.DataGridView dgvListCauHoi;
        private System.Windows.Forms.Button btnPause;
        private System.Windows.Forms.Button btnDapAn;
        private System.Windows.Forms.Button btnKetQua;
        private System.Windows.Forms.DataGridViewButtonColumn Column1;
        private System.Windows.Forms.RichTextBox HienCauHoi;
        private System.Windows.Forms.Button button7;
        private System.Windows.Forms.Button btnOpenYeuCau;
        private System.Windows.Forms.Panel panel5;
        private System.Windows.Forms.Button btnPre;
        private System.Windows.Forms.Button btnNext;
        private System.Windows.Forms.RadioButton rbDapAn_D;
        private System.Windows.Forms.RadioButton rbDapAn_C;
        private System.Windows.Forms.RadioButton rbDapAn_B;
        private System.Windows.Forms.RadioButton rbDapAn_A;
        private System.Windows.Forms.Label Clock;
        private System.Windows.Forms.Timer timer1;
    }
}

