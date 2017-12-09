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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle10 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle11 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle12 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmKetquaThi));
            this.dgvList = new System.Windows.Forms.DataGridView();
            this.lblCorrectAnswer = new System.Windows.Forms.Label();
            this.lblScore = new System.Windows.Forms.Label();
            this.colID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colCorrectAnsw = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colUserAnsw = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dgvList)).BeginInit();
            this.SuspendLayout();
            // 
            // dgvList
            // 
            this.dgvList.AllowUserToAddRows = false;
            this.dgvList.AllowUserToDeleteRows = false;
            this.dgvList.AllowUserToResizeColumns = false;
            this.dgvList.AllowUserToResizeRows = false;
            this.dgvList.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvList.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.colID,
            this.colCorrectAnsw,
            this.colUserAnsw});
            this.dgvList.Location = new System.Drawing.Point(2, 2);
            this.dgvList.Name = "dgvList";
            this.dgvList.ReadOnly = true;
            this.dgvList.Size = new System.Drawing.Size(282, 305);
            this.dgvList.TabIndex = 0;
            // 
            // lblCorrectAnswer
            // 
            this.lblCorrectAnswer.AutoSize = true;
            this.lblCorrectAnswer.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCorrectAnswer.Location = new System.Drawing.Point(22, 340);
            this.lblCorrectAnswer.Name = "lblCorrectAnswer";
            this.lblCorrectAnswer.Size = new System.Drawing.Size(142, 24);
            this.lblCorrectAnswer.TabIndex = 2;
            this.lblCorrectAnswer.Text = "Số câu đúng: ";
            // 
            // lblScore
            // 
            this.lblScore.AutoSize = true;
            this.lblScore.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblScore.Location = new System.Drawing.Point(22, 377);
            this.lblScore.Name = "lblScore";
            this.lblScore.Size = new System.Drawing.Size(70, 24);
            this.lblScore.TabIndex = 3;
            this.lblScore.Text = "Điểm: ";
            // 
            // colID
            // 
            dataGridViewCellStyle10.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.colID.DefaultCellStyle = dataGridViewCellStyle10;
            this.colID.HeaderText = "Câu";
            this.colID.Name = "colID";
            this.colID.ReadOnly = true;
            this.colID.Width = 40;
            // 
            // colCorrectAnsw
            // 
            dataGridViewCellStyle11.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.colCorrectAnsw.DefaultCellStyle = dataGridViewCellStyle11;
            this.colCorrectAnsw.HeaderText = "Đáp án đúng";
            this.colCorrectAnsw.Name = "colCorrectAnsw";
            this.colCorrectAnsw.ReadOnly = true;
            // 
            // colUserAnsw
            // 
            dataGridViewCellStyle12.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.colUserAnsw.DefaultCellStyle = dataGridViewCellStyle12;
            this.colUserAnsw.HeaderText = "Đáp án của bạn";
            this.colUserAnsw.Name = "colUserAnsw";
            this.colUserAnsw.ReadOnly = true;
            this.colUserAnsw.Width = 110;
            // 
            // frmKetqua
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(286, 435);
            this.Controls.Add(this.lblScore);
            this.Controls.Add(this.lblCorrectAnswer);
            this.Controls.Add(this.dgvList);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "frmKetqua";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmKetqua";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frmKetqua_FormClosing);
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