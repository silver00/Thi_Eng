using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Thi.Entities.DTO;
using Thi.Global;
using Thi.Util;

namespace Thi.form
{
    public partial class frmDapan : Form
    {
        private int numAnswers = 0;
        private int totalQuiz = 0;
        private List<ResultQuiz> listQuiz = new List<ResultQuiz>();
        private string outValue = "Not chose";
        public frmDapan()
        {
            InitializeComponent();
        }

        private void frmDapan_Load(object sender, EventArgs e)
        {
            dgvList.RowHeadersVisible = false;
            calculate();
            listQuiz = listQuiz.OrderBy(x => x.id).ToList();

            foreach (ResultQuiz item in listQuiz)
            {
                dgvList.Rows.Add(item.id, item.userAnswer);
                if (item.userAnswer.ToUpper().Equals(outValue.ToUpper()))
                {
                    dgvList.Rows[item.id - 1].Cells[1].Style.BackColor = Color.Yellow;
                }
            }
        }

        private void calculate()
        {

            foreach (KeyValuePair<int, string> entry in GlobalVariables.mapQuestion)
            {
                if (GlobalVariables.mapAnswer.ContainsKey(entry.Key))
                {

                }
                var x = new ResultQuiz();
                x.id = entry.Key;
                if (GlobalVariables.mapAnswer.ContainsKey(entry.Key))
                {
                    x.userAnswer = GlobalVariables.mapAnswer[entry.Key];
                }
                else
                {
                    x.userAnswer = outValue;
                }
                listQuiz.Add(x);
            }
            numAnswers = GlobalVariables.mapAnswer.Count;
            totalQuiz = listQuiz.Count;
            lblTotal.Text += totalQuiz.ToString();
            lblDo.Text += numAnswers.ToString();
            lblNotdo.Text += (totalQuiz - numAnswers);
        }
    }
}
