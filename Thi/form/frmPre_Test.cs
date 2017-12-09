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
using Thi.Util;

namespace Thi
{
    public partial class frmPre_Test : Form
    {
        private DethiBus dethiBus = new DethiBus();

        public frmPre_Test()
        {
            InitializeComponent();
        }

        private void quảnLýToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmLogin log = new frmLogin();
            log.ShowDialog();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            frmThi thi = new frmThi();
            Constants.MUCDO = Convert.ToInt32(cmbMucDo.SelectedValue);
            Constants.SOLUONG = Convert.ToInt32(cmbSoCau.SelectedValue);
            thi.ShowDialog();
        }

        private void phảnHồiToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }

        private void frmPre_Test_Load(object sender, EventArgs e)
        {
            DataTable mucdo = dethiBus.getMucdo();
            DataTable soluong = dethiBus.getSoluongcauhoi();
            cmbMucDo.DataSource = mucdo;
            cmbMucDo.DisplayMember = "tenmucdo";
            cmbMucDo.ValueMember = "mamucdo";

            cmbSoCau.DataSource = soluong;
            cmbSoCau.DisplayMember = "tongsocauhoi";
            cmbSoCau.ValueMember = "masoluong";

        }
    }
}
