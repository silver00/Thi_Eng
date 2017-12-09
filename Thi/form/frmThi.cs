using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Thi.BUS;
using Thi.Entities;
using Thi.form;
using Thi.Global;
using Thi.Util;

namespace Thi
{
    public partial class frmThi : Form
    {
        private List<Cauhoi> listCauhoi = new List<Cauhoi>();
        private DethiBus dethiBus = new DethiBus();
        private int minute = 10;
        private int second = 60;
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
            minute = dethiBus.getThoigianThi(Constants.SOLUONG) - 1;
            
            
            dgvListCauHoi.RowHeadersVisible = false;
            listCauhoi = dethiBus.getListCauHoi(Constants.MUCDO, Constants.SOLUONG);
            dethiBus.saveDethi(Constants.MUCDO, Constants.SOLUONG, DateUtils.getTimeInMilis(), listCauhoi);
            //string size = dgvListCauHoi.Width.ToString();
            dgvListCauHoi.Columns["Column1"].Width = dgvListCauHoi.Width;

            for (int i = 1; i <= listCauhoi.Count; i++)
            {
                dgvListCauHoi.Rows.Add("Câu hỏi " + i);
            }
            
            GlobalVariables.rightNowQuestion = 1;
            setQuestion(GlobalVariables.rightNowQuestion - 1);

            //dgvListCauHoi.Rows[1].DefaultCellStyle.BackColor = Color.Red;

            timer1.Enabled = true;
        }

        private void setQuestion(int index)
        {
            //HienCauHoi.Text = listCauhoi[index].thongtincauhoi;
            HienCauHoi.Text = "";
            HienCauHoi.SelectionFont = new Font("Microsoft Sans Serif", 16, FontStyle.Underline | FontStyle.Bold | FontStyle.Italic);
            HienCauHoi.SelectedText = "Câu hỏi " + (index + 1) + ":\n\n";
            HienCauHoi.SelectionFont = new Font("Microsoft Sans Serif", 13, FontStyle.Regular);
            HienCauHoi.SelectedText = "\t" + listCauhoi[index].thongtincauhoi;

            rbDapAn_A.Text = listCauhoi[index].dapana;
            
            rbDapAn_B.Text = listCauhoi[index].dapanb;
            rbDapAn_C.Text = listCauhoi[index].dapanc;
            rbDapAn_D.Text = listCauhoi[index].dapand;

            if (GlobalVariables.mapAnswer.ContainsKey(index + 1))
            {
                var answer = GlobalVariables.mapAnswer[index + 1].ToUpper();
                if(answer == "A")
                {
                    rbDapAn_A.Checked = true;
                } else if(answer == "B")
                {
                    rbDapAn_B.Checked = true;
                } else if(answer == "C")
                {
                    rbDapAn_C.Checked = true;
                } else
                {
                    rbDapAn_D.Checked = true;
                }
            } else
            {
                rbDapAn_A.Checked = rbDapAn_B.Checked = rbDapAn_C.Checked = rbDapAn_D.Checked = false;
            }
            //dgvListCauHoi.Rows[index].Selected = true;
            dgvListCauHoi.ClearSelection();
            //if(oldIndex != -1)
            //{
            //    dgvListCauHoi.Rows[oldIndex].Selected = false;
            //}
            dgvListCauHoi.Rows[index].Selected = true;
            
        }

        private void button6_Click(object sender, EventArgs e)
        {
            frmYeuCau yeucau = new frmYeuCau();
            yeucau.ShowDialog();
        }
        
        
        private void timer1_Tick(object sender, EventArgs e)
        {
            second--;
            Clock.Text = minute.ToString("00") + " : " + second.ToString("00");
            if (second == 0)
            {
                second = 60;
                minute--;
                if(minute == -1)
                {
                    timer1.Stop();
                    timer1.Enabled = false;
                    MessageBox.Show("Dung");
                    btnKetQua.Enabled = false;
                }
 
            }
        }

        private void btnPre_Click(object sender, EventArgs e)
        {
            pushAnswer(GlobalVariables.rightNowQuestion);
            if (GlobalVariables.rightNowQuestion == 1) GlobalVariables.rightNowQuestion = listCauhoi.Count;
            else
            {
                GlobalVariables.rightNowQuestion--;
            }
            setQuestion(GlobalVariables.rightNowQuestion - 1);
            
        }

        private void btnNext_Click(object sender, EventArgs e)
        {
            pushAnswer(GlobalVariables.rightNowQuestion);
            if (GlobalVariables.rightNowQuestion == listCauhoi.Count) GlobalVariables.rightNowQuestion = 1;
            else
            {
                GlobalVariables.rightNowQuestion++;
            }
            setQuestion(GlobalVariables.rightNowQuestion - 1);
            
        }

        private void pushAnswer(int index)
        {

            if (rbDapAn_A.Checked == true)
            {
                GlobalVariables.mapAnswer.AddOrUpdate(index, "A", (key, oldValue) => "A");
            }
            else if (rbDapAn_B.Checked == true)
            {
                GlobalVariables.mapAnswer.AddOrUpdate(index, "B", (key, oldValue) => "B");
            }
            else if (rbDapAn_C.Checked == true)
            {
                GlobalVariables.mapAnswer.AddOrUpdate(index, "C", (key, oldValue) => "C");
            }
            else if (rbDapAn_D.Checked == true)
            {
                GlobalVariables.mapAnswer.AddOrUpdate(index, "D", (key, oldValue) => "D");
            }

            if (GlobalVariables.mapAnswer.ContainsKey(index))
            {
                dgvListCauHoi.Rows[index - 1].Cells[0].Style.BackColor = System.Drawing.Color.ForestGreen;
            }
        }

        private void dgvListCauHoi_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            pushAnswer(GlobalVariables.rightNowQuestion);
            setQuestion(e.RowIndex);
            GlobalVariables.rightNowQuestion = e.RowIndex + 1;
        }

        private void frmThi_FormClosing(object sender, FormClosingEventArgs e)
        {
            Application.Exit();
        }

        private void btnKetQua_Click(object sender, EventArgs e)
        {
            pushAnswer(dgvListCauHoi.CurrentRow.Index  + 1);

            frmKetquaThi frm = new frmKetquaThi();
            frm.ShowDialog();
        }

        private void btnPause_Click(object sender, EventArgs e)
        {
            timer1.Stop();
            timer1.Enabled = false;
            this.Hide();
            frmKetquaThi frm = new frmKetquaThi();
            frm.ShowDialog();
        }

        private void btnDapAn_Click(object sender, EventArgs e)
        {
            pushAnswer(dgvListCauHoi.CurrentRow.Index + 1);
            frmDapan frm = new frmDapan();
            frm.ShowDialog();
        }
    }
    


}