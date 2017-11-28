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
    public partial class frmPre_Test : Form
    {
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
            thi.ShowDialog();
        }

        private void phảnHồiToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }
    }
}
