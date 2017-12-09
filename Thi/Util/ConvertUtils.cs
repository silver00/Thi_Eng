using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using Thi.Entities;
using Thi.Global;

namespace Thi.Util
{
    class ConvertUtils
    {
        public static List<Cauhoi> convertCauhoi(DataTable dt)
        {
            List<Cauhoi> lst = new List<Cauhoi>();

            foreach (DataRow dr in dt.Rows)
            {
                Cauhoi c = new Cauhoi();
                c.numIndex = Convert.ToInt32(dr.Field<long>("numIndex"));
                c.thongtincauhoi = dr.Field<string>("thongtincauhoi");

                c.ma = dr.Field<int>("ma");
                c.dapana = dr.Field<string>("dapana");
                c.dapanb = dr.Field<string>("dapanb");
                c.dapanc = dr.Field<string>("dapanc");
                c.dapand = dr.Field<string>("dapand");
                c.dapandung = dr.Field<string>("dapandung");
                GlobalVariables.mapQuestion.AddOrUpdate(c.numIndex, c.dapandung, (key, oladValue) => c.dapandung);
                lst.Add(c);
            }

            return lst;
        }

        public static Dictionary<int, int> convertPhanchia(DataTable dt)
        {
            Dictionary<int, int> dict = new Dictionary<int, int>();
            foreach (DataRow dr in dt.Rows)
            {
                var mucdo = dr.Field<int>("mucdocauhoi");
                var soluong = dr.Field<int>("soluongcau");
                dict.Add(mucdo, soluong);
            }
            
            return dict;
        }
    }
}
