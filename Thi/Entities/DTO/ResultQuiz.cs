using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Thi.Entities.DTO
{
    class ResultQuiz
    {
        public int id { get; set; }
        public string correctAnswer { get; set; }
        public string userAnswer { get; set; }
    }
}
