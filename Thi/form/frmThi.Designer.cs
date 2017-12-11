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
            this.btnNopBai = new System.Windows.Forms.Button();
            this.btnPhieuTraLoi = new System.Windows.Forms.Button();
            this.panel4 = new System.Windows.Forms.Panel();
            this.button7 = new System.Windows.Forms.Button();
            this.btnOpenYeuCau = new System.Windows.Forms.Button();
            this.HienCauHoi = new System.Windows.Forms.RichTextBox();
            this.panel5 = new System.Windows.Forms.Panel();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.btnPre = new System.Windows.Forms.Button();
            this.btnNext = new System.Windows.Forms.Button();
            this.rbDapAn_D = new System.Windows.Forms.RadioButton();
            this.rbDapAn_C = new System.Windows.Forms.RadioButton();
            this.rbDapAn_B = new System.Windows.Forms.RadioButton();
            this.rbDapAn_A = new System.Windows.Forms.RadioButton();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.panel6 = new System.Windows.Forms.Panel();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvListCauHoi)).BeginInit();
            this.panel2.SuspendLayout();
            this.panel3.SuspendLayout();
            this.panel4.SuspendLayout();
            this.panel5.SuspendLayout();
            this.panel6.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.panel1.Controls.Add(this.dgvListCauHoi);
            this.panel1.Controls.Add(this.panel2);
            this.panel1.Location = new System.Drawing.Point(9, 10);
            this.panel1.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.panel1.Name = "panel1";
<<<<<<< HEAD
            this.panel1.Size = new System.Drawing.Size(193, 465);
=======
            this.panel1.Size = new System.Drawing.Size(134, 378);
>>>>>>> 3ca7a3a83cf7620878687b6cc0eaeb3496d51def
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
            this.dgvListCauHoi.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvListCauHoi.BackgroundColor = System.Drawing.Color.Honeydew;
            this.dgvListCauHoi.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvListCauHoi.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1});
            this.dgvListCauHoi.Location = new System.Drawing.Point(3, 102);
            this.dgvListCauHoi.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.dgvListCauHoi.Name = "dgvListCauHoi";
            this.dgvListCauHoi.ReadOnly = true;
            this.dgvListCauHoi.RowTemplate.Height = 24;
<<<<<<< HEAD
            this.dgvListCauHoi.Size = new System.Drawing.Size(186, 336);
=======
            this.dgvListCauHoi.Size = new System.Drawing.Size(129, 273);
>>>>>>> 3ca7a3a83cf7620878687b6cc0eaeb3496d51def
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
            // 
            // panel2
            // 
            this.panel2.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.panel2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel2.Controls.Add(this.Clock);
            this.panel2.Location = new System.Drawing.Point(1, 2);
            this.panel2.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.panel2.Name = "panel2";
<<<<<<< HEAD
            this.panel2.Size = new System.Drawing.Size(189, 119);
=======
            this.panel2.Size = new System.Drawing.Size(131, 97);
>>>>>>> 3ca7a3a83cf7620878687b6cc0eaeb3496d51def
            this.panel2.TabIndex = 0;
            // 
            // Clock
            // 
            this.Clock.AutoSize = true;
            this.Clock.Font = new System.Drawing.Font("Microsoft Sans Serif", 28.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
<<<<<<< HEAD
            this.Clock.ForeColor = System.Drawing.Color.White;
            this.Clock.Location = new System.Drawing.Point(13, 31);
=======
            this.Clock.Location = new System.Drawing.Point(6, 25);
            this.Clock.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
>>>>>>> 3ca7a3a83cf7620878687b6cc0eaeb3496d51def
            this.Clock.Name = "Clock";
            this.Clock.Size = new System.Drawing.Size(115, 44);
            this.Clock.TabIndex = 0;
            this.Clock.Text = "00:00";
            // 
            // panel3
            // 
            this.panel3.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.panel3.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel3.Controls.Add(this.btnNopBai);
            this.panel3.Controls.Add(this.btnPhieuTraLoi);
            this.panel3.Location = new System.Drawing.Point(739, 202);
            this.panel3.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.panel3.Name = "panel3";
<<<<<<< HEAD
            this.panel3.Size = new System.Drawing.Size(200, 169);
=======
            this.panel3.Size = new System.Drawing.Size(150, 148);
>>>>>>> 3ca7a3a83cf7620878687b6cc0eaeb3496d51def
            this.panel3.TabIndex = 6;
            // 
            // btnNopBai
            // 
<<<<<<< HEAD
            this.btnNopBai.BackColor = System.Drawing.Color.Honeydew;
            this.btnNopBai.ForeColor = System.Drawing.Color.DarkViolet;
            this.btnNopBai.Location = new System.Drawing.Point(40, 73);
            this.btnNopBai.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
=======
            this.btnNopBai.Location = new System.Drawing.Point(30, 59);
            this.btnNopBai.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
>>>>>>> 3ca7a3a83cf7620878687b6cc0eaeb3496d51def
            this.btnNopBai.Name = "btnNopBai";
            this.btnNopBai.Size = new System.Drawing.Size(94, 32);
            this.btnNopBai.TabIndex = 10;
            this.btnNopBai.Text = "&Nộp Bài";
            this.btnNopBai.UseVisualStyleBackColor = false;
            this.btnNopBai.Click += new System.EventHandler(this.btnNopBai_Click);
            // 
            // btnPhieuTraLoi
            // 
<<<<<<< HEAD
            this.btnPhieuTraLoi.BackColor = System.Drawing.Color.Honeydew;
            this.btnPhieuTraLoi.ForeColor = System.Drawing.Color.DarkViolet;
            this.btnPhieuTraLoi.Location = new System.Drawing.Point(40, 31);
            this.btnPhieuTraLoi.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
=======
            this.btnPhieuTraLoi.Location = new System.Drawing.Point(30, 25);
            this.btnPhieuTraLoi.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
>>>>>>> 3ca7a3a83cf7620878687b6cc0eaeb3496d51def
            this.btnPhieuTraLoi.Name = "btnPhieuTraLoi";
            this.btnPhieuTraLoi.Size = new System.Drawing.Size(94, 32);
            this.btnPhieuTraLoi.TabIndex = 0;
            this.btnPhieuTraLoi.Text = "&Phiếu trả lời";
            this.btnPhieuTraLoi.UseVisualStyleBackColor = false;
            this.btnPhieuTraLoi.Click += new System.EventHandler(this.btnPhieuTraLoi_Click);
            // 
            // panel4
            // 
            this.panel4.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panel4.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel4.Controls.Add(this.button7);
            this.panel4.Controls.Add(this.btnOpenYeuCau);
            this.panel4.Location = new System.Drawing.Point(739, 10);
            this.panel4.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(150, 122);
            this.panel4.TabIndex = 7;
            // 
            // button7
            // 
<<<<<<< HEAD
            this.button7.BackColor = System.Drawing.Color.Honeydew;
            this.button7.ForeColor = System.Drawing.Color.DarkViolet;
            this.button7.Location = new System.Drawing.Point(40, 74);
            this.button7.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
=======
            this.button7.Location = new System.Drawing.Point(30, 60);
            this.button7.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
>>>>>>> 3ca7a3a83cf7620878687b6cc0eaeb3496d51def
            this.button7.Name = "button7";
            this.button7.Size = new System.Drawing.Size(94, 37);
            this.button7.TabIndex = 1;
            this.button7.Text = "&Phản Hồi";
            this.button7.UseVisualStyleBackColor = false;
            // 
            // btnOpenYeuCau
            // 
<<<<<<< HEAD
            this.btnOpenYeuCau.BackColor = System.Drawing.Color.Honeydew;
            this.btnOpenYeuCau.ForeColor = System.Drawing.Color.DarkViolet;
            this.btnOpenYeuCau.Location = new System.Drawing.Point(40, 22);
            this.btnOpenYeuCau.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
=======
            this.btnOpenYeuCau.Location = new System.Drawing.Point(30, 18);
            this.btnOpenYeuCau.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
>>>>>>> 3ca7a3a83cf7620878687b6cc0eaeb3496d51def
            this.btnOpenYeuCau.Name = "btnOpenYeuCau";
            this.btnOpenYeuCau.Size = new System.Drawing.Size(94, 37);
            this.btnOpenYeuCau.TabIndex = 0;
            this.btnOpenYeuCau.Text = "&Gửi Yêu Cầu";
            this.btnOpenYeuCau.UseVisualStyleBackColor = false;
            this.btnOpenYeuCau.Click += new System.EventHandler(this.button6_Click);
            // 
            // HienCauHoi
            // 
            this.HienCauHoi.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.HienCauHoi.BackColor = System.Drawing.Color.Honeydew;
            this.HienCauHoi.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.HienCauHoi.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
<<<<<<< HEAD
            this.HienCauHoi.ForeColor = System.Drawing.Color.Black;
            this.HienCauHoi.Location = new System.Drawing.Point(243, 12);
            this.HienCauHoi.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
=======
            this.HienCauHoi.Location = new System.Drawing.Point(182, 10);
            this.HienCauHoi.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
>>>>>>> 3ca7a3a83cf7620878687b6cc0eaeb3496d51def
            this.HienCauHoi.Name = "HienCauHoi";
            this.HienCauHoi.Size = new System.Drawing.Size(524, 197);
            this.HienCauHoi.TabIndex = 10;
            this.HienCauHoi.Text = "";
            // 
            // panel5
            // 
            this.panel5.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panel5.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
<<<<<<< HEAD
            this.panel5.Controls.Add(this.label4);
            this.panel5.Controls.Add(this.label3);
            this.panel5.Controls.Add(this.label2);
            this.panel5.Controls.Add(this.label1);
=======
            this.panel5.Controls.Add(this.panel6);
>>>>>>> 3ca7a3a83cf7620878687b6cc0eaeb3496d51def
            this.panel5.Controls.Add(this.btnPre);
            this.panel5.Controls.Add(this.btnNext);
            this.panel5.Location = new System.Drawing.Point(182, 228);
            this.panel5.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.panel5.Name = "panel5";
            this.panel5.Size = new System.Drawing.Size(524, 160);
            this.panel5.TabIndex = 11;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(80, 88);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(18, 16);
            this.label4.TabIndex = 19;
            this.label4.Text = "D";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(81, 63);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(17, 16);
            this.label3.TabIndex = 18;
            this.label3.Text = "C";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(80, 37);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(17, 16);
            this.label2.TabIndex = 17;
            this.label2.Text = "B";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(81, 11);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(17, 16);
            this.label1.TabIndex = 16;
            this.label1.Text = "A";
            // 
            // btnPre
            // 
            this.btnPre.BackColor = System.Drawing.Color.Honeydew;
            this.btnPre.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnPre.BackgroundImage")));
            this.btnPre.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
<<<<<<< HEAD
            this.btnPre.Location = new System.Drawing.Point(277, 154);
            this.btnPre.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
=======
            this.btnPre.Location = new System.Drawing.Point(201, 127);
            this.btnPre.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
>>>>>>> 3ca7a3a83cf7620878687b6cc0eaeb3496d51def
            this.btnPre.Name = "btnPre";
            this.btnPre.Size = new System.Drawing.Size(44, 31);
            this.btnPre.TabIndex = 15;
            this.btnPre.UseVisualStyleBackColor = false;
            this.btnPre.Click += new System.EventHandler(this.btnPre_Click);
            // 
            // btnNext
            // 
            this.btnNext.BackColor = System.Drawing.Color.Honeydew;
            this.btnNext.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnNext.BackgroundImage")));
            this.btnNext.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
<<<<<<< HEAD
            this.btnNext.Location = new System.Drawing.Point(341, 154);
            this.btnNext.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
=======
            this.btnNext.Location = new System.Drawing.Point(249, 127);
            this.btnNext.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
>>>>>>> 3ca7a3a83cf7620878687b6cc0eaeb3496d51def
            this.btnNext.Name = "btnNext";
            this.btnNext.Size = new System.Drawing.Size(44, 31);
            this.btnNext.TabIndex = 14;
            this.btnNext.UseVisualStyleBackColor = false;
            this.btnNext.Click += new System.EventHandler(this.btnNext_Click);
            // 
            // rbDapAn_D
            // 
            this.rbDapAn_D.AutoSize = true;
            this.rbDapAn_D.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rbDapAn_D.Location = new System.Drawing.Point(100, 85);
            this.rbDapAn_D.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
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
            this.rbDapAn_C.Location = new System.Drawing.Point(100, 61);
            this.rbDapAn_C.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
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
            this.rbDapAn_B.Location = new System.Drawing.Point(100, 36);
            this.rbDapAn_B.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
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
<<<<<<< HEAD
            this.rbDapAn_A.ForeColor = System.Drawing.Color.Black;
            this.rbDapAn_A.Location = new System.Drawing.Point(108, 18);
            this.rbDapAn_A.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
=======
            this.rbDapAn_A.Location = new System.Drawing.Point(100, 9);
            this.rbDapAn_A.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
>>>>>>> 3ca7a3a83cf7620878687b6cc0eaeb3496d51def
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
            // panel6
            // 
            this.panel6.Controls.Add(this.rbDapAn_B);
            this.panel6.Controls.Add(this.label4);
            this.panel6.Controls.Add(this.rbDapAn_A);
            this.panel6.Controls.Add(this.label3);
            this.panel6.Controls.Add(this.rbDapAn_C);
            this.panel6.Controls.Add(this.label2);
            this.panel6.Controls.Add(this.rbDapAn_D);
            this.panel6.Controls.Add(this.label1);
            this.panel6.Location = new System.Drawing.Point(3, 3);
            this.panel6.Name = "panel6";
            this.panel6.Size = new System.Drawing.Size(518, 119);
            this.panel6.TabIndex = 20;
            // 
            // frmThi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
<<<<<<< HEAD
            this.BackColor = System.Drawing.Color.DarkSeaGreen;
            this.ClientSize = new System.Drawing.Size(1221, 489);
=======
            this.BackColor = System.Drawing.Color.DarkGray;
            this.ClientSize = new System.Drawing.Size(916, 397);
>>>>>>> 3ca7a3a83cf7620878687b6cc0eaeb3496d51def
            this.Controls.Add(this.panel5);
            this.Controls.Add(this.HienCauHoi);
            this.Controls.Add(this.panel4);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
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
            this.panel6.ResumeLayout(false);
            this.panel6.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.DataGridView dgvListCauHoi;
        private System.Windows.Forms.Button btnNopBai;
        private System.Windows.Forms.Button btnPhieuTraLoi;
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
        private System.Windows.Forms.Panel panel6;
    }
}

