namespace Thi.form
{
    partial class frmDapan
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmDapan));
            this.lblDo = new System.Windows.Forms.Label();
            this.lblTotal = new System.Windows.Forms.Label();
            this.dgvList = new System.Windows.Forms.DataGridView();
            this.colID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colUserAnsw = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.lblNotdo = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgvList)).BeginInit();
            this.SuspendLayout();
            // 
            // lblDo
            // 
            this.lblDo.AutoSize = true;
            this.lblDo.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDo.Location = new System.Drawing.Point(267, 62);
            this.lblDo.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblDo.Name = "lblDo";
            this.lblDo.Size = new System.Drawing.Size(192, 29);
            this.lblDo.TabIndex = 6;
            this.lblDo.Text = "Số câu đã làm: ";
            // 
            // lblTotal
            // 
            this.lblTotal.AutoSize = true;
            this.lblTotal.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTotal.Location = new System.Drawing.Point(267, 11);
            this.lblTotal.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblTotal.Name = "lblTotal";
            this.lblTotal.Size = new System.Drawing.Size(171, 29);
            this.lblTotal.TabIndex = 5;
            this.lblTotal.Text = "Tổng số câu: ";
            // 
            // dgvList
            // 
            this.dgvList.AllowUserToAddRows = false;
            this.dgvList.AllowUserToDeleteRows = false;
            this.dgvList.AllowUserToResizeColumns = false;
            this.dgvList.AllowUserToResizeRows = false;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.dgvList.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
<<<<<<< HEAD
            this.dgvList.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
=======
>>>>>>> 3ca7a3a83cf7620878687b6cc0eaeb3496d51def
            this.dgvList.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvList.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.colID,
            this.colUserAnsw});
            this.dgvList.Location = new System.Drawing.Point(3, 2);
            this.dgvList.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.dgvList.Name = "dgvList";
            this.dgvList.ReadOnly = true;
            this.dgvList.Size = new System.Drawing.Size(228, 391);
            this.dgvList.TabIndex = 4;
            // 
            // colID
            // 
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.colID.DefaultCellStyle = dataGridViewCellStyle2;
            this.colID.HeaderText = "Câu";
            this.colID.Name = "colID";
            this.colID.ReadOnly = true;
            // 
            // colUserAnsw
            // 
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.colUserAnsw.DefaultCellStyle = dataGridViewCellStyle3;
            this.colUserAnsw.HeaderText = "Đáp án bạn chọn";
            this.colUserAnsw.Name = "colUserAnsw";
            this.colUserAnsw.ReadOnly = true;
            // 
            // lblNotdo
            // 
            this.lblNotdo.AutoSize = true;
            this.lblNotdo.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNotdo.Location = new System.Drawing.Point(267, 114);
            this.lblNotdo.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblNotdo.Name = "lblNotdo";
            this.lblNotdo.Size = new System.Drawing.Size(218, 29);
            this.lblNotdo.TabIndex = 7;
            this.lblNotdo.Text = "Số câu chưa làm: ";
            // 
            // lblNotdo
            // 
            this.lblNotdo.AutoSize = true;
            this.lblNotdo.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNotdo.Location = new System.Drawing.Point(200, 93);
            this.lblNotdo.Name = "lblNotdo";
            this.lblNotdo.Size = new System.Drawing.Size(178, 24);
            this.lblNotdo.TabIndex = 7;
            this.lblNotdo.Text = "Số câu chưa làm: ";
            // 
            // frmDapan
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.DarkSeaGreen;
            this.ClientSize = new System.Drawing.Size(565, 394);
            this.Controls.Add(this.lblNotdo);
            this.Controls.Add(this.lblDo);
            this.Controls.Add(this.lblTotal);
            this.Controls.Add(this.dgvList);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "frmDapan";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Phiếu Trả Lời";
            this.Load += new System.EventHandler(this.frmDapan_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvList)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblDo;
        private System.Windows.Forms.Label lblTotal;
        private System.Windows.Forms.DataGridView dgvList;
        private System.Windows.Forms.DataGridViewTextBoxColumn colID;
        private System.Windows.Forms.DataGridViewTextBoxColumn colUserAnsw;
        private System.Windows.Forms.Label lblNotdo;
    }
}