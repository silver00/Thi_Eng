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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmThi));
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
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.rbDapAn_D = new System.Windows.Forms.RadioButton();
            this.rbDapAn_C = new System.Windows.Forms.RadioButton();
            this.rbDapAn_B = new System.Windows.Forms.RadioButton();
            this.rbDapAn_A = new System.Windows.Forms.RadioButton();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.btnPre = new System.Windows.Forms.Button();
            this.btnNext = new System.Windows.Forms.Button();
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
            this.panel1.Location = new System.Drawing.Point(9, 10);
            this.panel1.Margin = new System.Windows.Forms.Padding(2);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(134, 378);
            this.panel1.TabIndex = 5;
            // 
            // dgvListCauHoi
            // 
            this.dgvListCauHoi.AllowUserToAddRows = false;
            this.dgvListCauHoi.AllowUserToDeleteRows = false;
            this.dgvListCauHoi.AllowUserToResizeColumns = false;
            this.dgvListCauHoi.AllowUserToResizeRows = false;
            this.dgvListCauHoi.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.dgvListCauHoi.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvListCauHoi.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1});
            this.dgvListCauHoi.Location = new System.Drawing.Point(3, 102);
            this.dgvListCauHoi.Margin = new System.Windows.Forms.Padding(2);
            this.dgvListCauHoi.Name = "dgvListCauHoi";
            this.dgvListCauHoi.ReadOnly = true;
            this.dgvListCauHoi.RowTemplate.Height = 24;
            this.dgvListCauHoi.Size = new System.Drawing.Size(129, 273);
            this.dgvListCauHoi.TabIndex = 1;
            this.dgvListCauHoi.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvListCauHoi_CellClick);
            // 
            // Column1
            // 
            this.Column1.DataPropertyName = "clbtnDs";
            this.Column1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Column1.HeaderText = "Danh sách câu hỏi";
            this.Column1.Name = "Column1";
            this.Column1.ReadOnly = true;
            this.Column1.Width = 105;
            // 
            // panel2
            // 
            this.panel2.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.panel2.Controls.Add(this.Clock);
            this.panel2.Location = new System.Drawing.Point(1, 2);
            this.panel2.Margin = new System.Windows.Forms.Padding(2);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(134, 97);
            this.panel2.TabIndex = 0;
            // 
            // Clock
            // 
            this.Clock.AutoSize = true;
            this.Clock.Font = new System.Drawing.Font("Microsoft Sans Serif", 28.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Clock.Location = new System.Drawing.Point(10, 25);
            this.Clock.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.Clock.Name = "Clock";
            this.Clock.Size = new System.Drawing.Size(115, 44);
            this.Clock.TabIndex = 0;
            this.Clock.Text = "00:00";
            // 
            // panel3
            // 
            this.panel3.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.panel3.Controls.Add(this.btnPause);
            this.panel3.Controls.Add(this.btnDapAn);
            this.panel3.Controls.Add(this.btnKetQua);
            this.panel3.Location = new System.Drawing.Point(739, 202);
            this.panel3.Margin = new System.Windows.Forms.Padding(2);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(150, 148);
            this.panel3.TabIndex = 6;
            // 
            // btnPause
            // 
            this.btnPause.Location = new System.Drawing.Point(30, 94);
            this.btnPause.Margin = new System.Windows.Forms.Padding(2);
            this.btnPause.Name = "btnPause";
            this.btnPause.Size = new System.Drawing.Size(94, 32);
            this.btnPause.TabIndex = 11;
            this.btnPause.Text = "&Kết thúc thi";
            this.btnPause.UseVisualStyleBackColor = true;
            this.btnPause.Click += new System.EventHandler(this.btnPause_Click);
            // 
            // btnDapAn
            // 
            this.btnDapAn.Location = new System.Drawing.Point(30, 59);
            this.btnDapAn.Margin = new System.Windows.Forms.Padding(2);
            this.btnDapAn.Name = "btnDapAn";
            this.btnDapAn.Size = new System.Drawing.Size(94, 32);
            this.btnDapAn.TabIndex = 10;
            this.btnDapAn.Text = "&Xem Đáp Án";
            this.btnDapAn.UseVisualStyleBackColor = true;
            this.btnDapAn.Click += new System.EventHandler(this.btnDapAn_Click);
            // 
            // btnKetQua
            // 
            this.btnKetQua.Location = new System.Drawing.Point(30, 25);
            this.btnKetQua.Margin = new System.Windows.Forms.Padding(2);
            this.btnKetQua.Name = "btnKetQua";
            this.btnKetQua.Size = new System.Drawing.Size(94, 32);
            this.btnKetQua.TabIndex = 0;
            this.btnKetQua.Text = "&Xem Kết Quả";
            this.btnKetQua.UseVisualStyleBackColor = true;
            this.btnKetQua.Click += new System.EventHandler(this.btnKetQua_Click);
            // 
            // panel4
            // 
            this.panel4.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panel4.Controls.Add(this.button7);
            this.panel4.Controls.Add(this.btnOpenYeuCau);
            this.panel4.Location = new System.Drawing.Point(739, 10);
            this.panel4.Margin = new System.Windows.Forms.Padding(2);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(150, 122);
            this.panel4.TabIndex = 7;
            // 
            // button7
            // 
            this.button7.Location = new System.Drawing.Point(30, 60);
            this.button7.Margin = new System.Windows.Forms.Padding(2);
            this.button7.Name = "button7";
            this.button7.Size = new System.Drawing.Size(94, 37);
            this.button7.TabIndex = 1;
            this.button7.Text = "&Phản Hồi";
            this.button7.UseVisualStyleBackColor = true;
            // 
            // btnOpenYeuCau
            // 
            this.btnOpenYeuCau.Location = new System.Drawing.Point(30, 18);
            this.btnOpenYeuCau.Margin = new System.Windows.Forms.Padding(2);
            this.btnOpenYeuCau.Name = "btnOpenYeuCau";
            this.btnOpenYeuCau.Size = new System.Drawing.Size(94, 37);
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
            this.HienCauHoi.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.HienCauHoi.Location = new System.Drawing.Point(182, 10);
            this.HienCauHoi.Margin = new System.Windows.Forms.Padding(2);
            this.HienCauHoi.Name = "HienCauHoi";
            this.HienCauHoi.Size = new System.Drawing.Size(524, 197);
            this.HienCauHoi.TabIndex = 10;
            this.HienCauHoi.Text = "";
            // 
            // panel5
            // 
            this.panel5.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panel5.Controls.Add(this.label4);
            this.panel5.Controls.Add(this.label3);
            this.panel5.Controls.Add(this.label2);
            this.panel5.Controls.Add(this.label1);
            this.panel5.Controls.Add(this.btnPre);
            this.panel5.Controls.Add(this.btnNext);
            this.panel5.Controls.Add(this.rbDapAn_D);
            this.panel5.Controls.Add(this.rbDapAn_C);
            this.panel5.Controls.Add(this.rbDapAn_B);
            this.panel5.Controls.Add(this.rbDapAn_A);
            this.panel5.Location = new System.Drawing.Point(182, 228);
            this.panel5.Margin = new System.Windows.Forms.Padding(2);
            this.panel5.Name = "panel5";
            this.panel5.Size = new System.Drawing.Size(524, 160);
            this.panel5.TabIndex = 11;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(61, 94);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(18, 16);
            this.label4.TabIndex = 19;
            this.label4.Text = "D";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(62, 69);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(17, 16);
            this.label3.TabIndex = 18;
            this.label3.Text = "C";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(61, 43);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(17, 16);
            this.label2.TabIndex = 17;
            this.label2.Text = "B";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(62, 17);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(17, 16);
            this.label1.TabIndex = 16;
            this.label1.Text = "A";
            // 
            // rbDapAn_D
            // 
            this.rbDapAn_D.AutoSize = true;
            this.rbDapAn_D.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rbDapAn_D.Location = new System.Drawing.Point(81, 91);
            this.rbDapAn_D.Margin = new System.Windows.Forms.Padding(2);
            this.rbDapAn_D.Name = "rbDapAn_D";
            this.rbDapAn_D.Size = new System.Drawing.Size(101, 20);
            this.rbDapAn_D.TabIndex = 13;
            this.rbDapAn_D.TabStop = true;
            this.rbDapAn_D.Text = "radioButton4";
            this.rbDapAn_D.UseVisualStyleBackColor = true;
            // 
            // rbDapAn_C
            // 
            this.rbDapAn_C.AutoSize = true;
            this.rbDapAn_C.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rbDapAn_C.Location = new System.Drawing.Point(81, 67);
            this.rbDapAn_C.Margin = new System.Windows.Forms.Padding(2);
            this.rbDapAn_C.Name = "rbDapAn_C";
            this.rbDapAn_C.Size = new System.Drawing.Size(101, 20);
            this.rbDapAn_C.TabIndex = 12;
            this.rbDapAn_C.TabStop = true;
            this.rbDapAn_C.Text = "radioButton3";
            this.rbDapAn_C.UseVisualStyleBackColor = true;
            // 
            // rbDapAn_B
            // 
            this.rbDapAn_B.AutoSize = true;
            this.rbDapAn_B.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rbDapAn_B.Location = new System.Drawing.Point(81, 42);
            this.rbDapAn_B.Margin = new System.Windows.Forms.Padding(2);
            this.rbDapAn_B.Name = "rbDapAn_B";
            this.rbDapAn_B.Size = new System.Drawing.Size(101, 20);
            this.rbDapAn_B.TabIndex = 11;
            this.rbDapAn_B.TabStop = true;
            this.rbDapAn_B.Text = "radioButton2";
            this.rbDapAn_B.UseVisualStyleBackColor = true;
            // 
            // rbDapAn_A
            // 
            this.rbDapAn_A.AutoSize = true;
            this.rbDapAn_A.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rbDapAn_A.Location = new System.Drawing.Point(81, 15);
            this.rbDapAn_A.Margin = new System.Windows.Forms.Padding(2);
            this.rbDapAn_A.Name = "rbDapAn_A";
            this.rbDapAn_A.Size = new System.Drawing.Size(101, 20);
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
            // btnPre
            // 
            this.btnPre.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(192)))), ((int)(((byte)(255)))));
            this.btnPre.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnPre.BackgroundImage")));
            this.btnPre.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnPre.Location = new System.Drawing.Point(201, 127);
            this.btnPre.Margin = new System.Windows.Forms.Padding(2);
            this.btnPre.Name = "btnPre";
            this.btnPre.Size = new System.Drawing.Size(44, 31);
            this.btnPre.TabIndex = 15;
            this.btnPre.UseVisualStyleBackColor = false;
            this.btnPre.Click += new System.EventHandler(this.btnPre_Click);
            // 
            // btnNext
            // 
            this.btnNext.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnNext.BackgroundImage")));
            this.btnNext.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnNext.Location = new System.Drawing.Point(249, 127);
            this.btnNext.Margin = new System.Windows.Forms.Padding(2);
            this.btnNext.Name = "btnNext";
            this.btnNext.Size = new System.Drawing.Size(44, 31);
            this.btnNext.TabIndex = 14;
            this.btnNext.UseVisualStyleBackColor = true;
            this.btnNext.Click += new System.EventHandler(this.btnNext_Click);
            // 
            // frmThi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(192)))), ((int)(((byte)(255)))));
            this.ClientSize = new System.Drawing.Size(916, 397);
            this.Controls.Add(this.panel5);
            this.Controls.Add(this.HienCauHoi);
            this.Controls.Add(this.panel4);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "frmThi";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Thi";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frmThi_FormClosing);
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
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridViewButtonColumn Column1;
    }
}

