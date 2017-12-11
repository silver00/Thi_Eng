namespace Thi.form
{
    partial class frmKetquaThi
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmKetquaThi));
            this.dgvList = new System.Windows.Forms.DataGridView();
            this.colID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colCorrectAnsw = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colUserAnsw = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.lblCorrectAnswer = new System.Windows.Forms.Label();
            this.lblScore = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgvList)).BeginInit();
            this.SuspendLayout();
            // 
            // dgvList
            // 
            this.dgvList.AllowUserToAddRows = false;
            this.dgvList.AllowUserToDeleteRows = false;
            this.dgvList.AllowUserToResizeColumns = false;
            this.dgvList.AllowUserToResizeRows = false;
            this.dgvList.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvList.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvList.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.colID,
            this.colCorrectAnsw,
            this.colUserAnsw});
            this.dgvList.Location = new System.Drawing.Point(3, 2);
            this.dgvList.Margin = new System.Windows.Forms.Padding(4);
            this.dgvList.Name = "dgvList";
            this.dgvList.ReadOnly = true;
            this.dgvList.Size = new System.Drawing.Size(376, 375);
            this.dgvList.TabIndex = 0;
            // 
            // colID
            // 
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.colID.DefaultCellStyle = dataGridViewCellStyle1;
            this.colID.HeaderText = "Câu";
            this.colID.Name = "colID";
            this.colID.ReadOnly = true;
            // 
            // colCorrectAnsw
            // 
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.colCorrectAnsw.DefaultCellStyle = dataGridViewCellStyle2;
            this.colCorrectAnsw.HeaderText = "Đáp án đúng";
            this.colCorrectAnsw.Name = "colCorrectAnsw";
            this.colCorrectAnsw.ReadOnly = true;
            // 
            // colUserAnsw
            // 
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.colUserAnsw.DefaultCellStyle = dataGridViewCellStyle3;
            this.colUserAnsw.HeaderText = "Đáp án của bạn";
            this.colUserAnsw.Name = "colUserAnsw";
            this.colUserAnsw.ReadOnly = true;
            // 
            // lblCorrectAnswer
            // 
            this.lblCorrectAnswer.AutoSize = true;
            this.lblCorrectAnswer.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCorrectAnswer.Location = new System.Drawing.Point(29, 418);
            this.lblCorrectAnswer.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblCorrectAnswer.Name = "lblCorrectAnswer";
            this.lblCorrectAnswer.Size = new System.Drawing.Size(172, 29);
            this.lblCorrectAnswer.TabIndex = 2;
            this.lblCorrectAnswer.Text = "Số câu đúng: ";
            // 
            // lblScore
            // 
            this.lblScore.AutoSize = true;
            this.lblScore.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblScore.Location = new System.Drawing.Point(29, 464);
            this.lblScore.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblScore.Name = "lblScore";
            this.lblScore.Size = new System.Drawing.Size(88, 29);
            this.lblScore.TabIndex = 3;
            this.lblScore.Text = "Điểm: ";
            // 
            // frmKetquaThi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.DarkSeaGreen;
            this.ClientSize = new System.Drawing.Size(381, 535);
            this.Controls.Add(this.lblScore);
            this.Controls.Add(this.lblCorrectAnswer);
            this.Controls.Add(this.dgvList);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "frmKetquaThi";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Kết Quả Thi";
            this.Load += new System.EventHandler(this.frmKetqua_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvList)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvList;
        private System.Windows.Forms.Label lblCorrectAnswer;
        private System.Windows.Forms.Label lblScore;
        private System.Windows.Forms.DataGridViewTextBoxColumn colID;
        private System.Windows.Forms.DataGridViewTextBoxColumn colCorrectAnsw;
        private System.Windows.Forms.DataGridViewTextBoxColumn colUserAnsw;
    }
}