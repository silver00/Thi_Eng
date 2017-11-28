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
    public partial class frmYeuCau : Form
    {
        public frmYeuCau()
        {
            InitializeComponent();
        }

        private void frmYeuCau_Load(object sender, EventArgs e)
        {

        }

        private void frmYeuCau_FormClosing(object sender, FormClosingEventArgs e)
        {
            DialogResult res = MessageBox.Show("Thoát", "Thoát", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if(res == DialogResult.No)
            {
                e.Cancel = (e.CloseReason == CloseReason.UserClosing);
            }
        }
    }
}
