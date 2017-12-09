using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Thi.Global;
using Thi.Entities;
using Thi.Entities.DTO;

namespace Thi.form
{
    public partial class frmKetquaThi : Form
    {
        private int numCorrectAnswers = 0;
        private double score = 0.0f;
        private List<ResultQuiz> listQuiz = new List<ResultQuiz>();
        private const string outValue = "Not answer";
        public frmKetquaThi()
        {
            InitializeComponent();
        }

        private void frmKetqua_Load(object sender, EventArgs e)
        {
            dgvList.RowHeadersVisible = false;
            calculate();
            listQuiz = listQuiz.OrderBy(x => x.id).ToList();

            foreach(ResultQuiz item in listQuiz)
            {
                dgvList.Rows.Add(item.id, item.correctAnswer, item.userAnswer);
                if (item.correctAnswer.Equals(item.userAnswer))
                {
                    dgvList.Rows[item.id - 1].Cells[2].Style.BackColor = Color.LightBlue;
                }
                else if (item.userAnswer.Equals(outValue.ToUpper()))
                {
                    dgvList.Rows[item.id - 1].Cells[2].Style.BackColor = Color.Yellow;
                }
                else
                {
                    dgvList.Rows[item.id - 1].Cells[2].Style.BackColor = Color.Red;
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
                x.correctAnswer = entry.Value;
                if (GlobalVariables.mapAnswer.ContainsKey(entry.Key))
                {
                    x.userAnswer = GlobalVariables.mapAnswer[entry.Key].ToUpper();
                } else
                {
                    x.userAnswer = outValue.ToUpper();
                }
                listQuiz.Add(x);
            }

            
            numCorrectAnswers = listQuiz.Where(x => x.correctAnswer.Equals(x.userAnswer)).Count();
            score = (double)numCorrectAnswers * 10 / listQuiz.Count();
            lblCorrectAnswer.Text += numCorrectAnswers.ToString();
            lblScore.Text += string.Format("{0:0.00}", score);
        }

        private void frmKetqua_FormClosing(object sender, FormClosingEventArgs e)
        {
            Application.Exit();
        }
    }
}
