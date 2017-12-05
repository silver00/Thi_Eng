using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Thi
{
    public partial class frmThi : Form
    {
        public frmThi()
        {
            InitializeComponent();
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void label10_Click(object sender, EventArgs e)
        {

        }

        private void frmThi_Load(object sender, EventArgs e)
        {

            timer1.Enabled = true;
            dgvListCauHoi.RowHeadersVisible = false;
            Column1.Width = dgvListCauHoi.Width;
            for (int i = 1; i <= 50; i++)
            {
                dgvListCauHoi.Rows.Add("Câu hỏi " + i);
            }
        }

        private void button6_Click(object sender, EventArgs e)
        {
            frmYeuCau yeucau = new frmYeuCau();
            yeucau.ShowDialog();
        }
        
        int minute = 10;
        int second = 60;
        private void timer1_Tick(object sender, EventArgs e)
        {
            second--;
            Clock.Text = minute.ToString() + " : " + second.ToString();
            if (second == 0)
            {
                second = 60;
                minute--;
                if(minute == -1)
                {
                    timer1.Enabled = false;
                    MessageBox.Show("Dung");
                    btnKetQua.Enabled = false;
                }
 
            }
        }
    }
    


}