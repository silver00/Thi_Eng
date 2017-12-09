using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Thi.Global
{
    class GlobalVariables
    {
        public static ConcurrentDictionary<int, string> mapQuestion = new ConcurrentDictionary<int, string>();

        public static ConcurrentDictionary<int, string> mapAnswer = new ConcurrentDictionary<int, string>();

        public static int rightNowQuestion = 0;
    }
}
