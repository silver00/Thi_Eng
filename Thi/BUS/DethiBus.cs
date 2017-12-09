using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Thi.DAL;
using Thi.Entities;
using Thi.Util;

namespace Thi.BUS
{
    
    class DethiBus
    {
        private DethiDAL dethiDal = new DethiDAL();
        
        public DataTable getMucdo()
        {
            return dethiDal.getMucDo();
        }

        public DataTable getSoluongcauhoi()
        {
            return dethiDal.getSoluongcauhoi();
        }

        public List<Cauhoi> getList()
        {
            return ConvertUtils.convertCauhoi(dethiDal.getList());
        }

        public Dictionary<int, int> getPhanchia(int mucdo, int soluong)
        {
            return ConvertUtils.convertPhanchia(dethiDal.getPhanchia(mucdo, soluong));
        }

        public List<Cauhoi> getListCauHoi(int mucdo, int soluong)
        {
            Dictionary<int, int> mapPhanchia = getPhanchia(mucdo, soluong);
            List<Cauhoi> listCauhoi = new List<Cauhoi>();
            int offset = 0;
            foreach(KeyValuePair<int, int> entry in mapPhanchia)
            {
                List<Cauhoi> raw = ConvertUtils.convertCauhoi(dethiDal.getListCauHoi(entry.Key, entry.Value, offset));
                listCauhoi.AddRange(raw);
                offset += entry.Value;
            }

            return listCauhoi;
        }
       

        public int getThoigianThi(int soluong)
        {
            return dethiDal.getThoigianThi(soluong);
        }


        public void saveDethi(int mucdo, int soluong, long ngaytao, List<Cauhoi> listCauhoi)
        {
            int idDe = dethiDal.saveDethi(mucdo, soluong, ngaytao);
            string macauhoi = "";
            foreach(Cauhoi item in listCauhoi)
            {
                macauhoi += (item.ma + ",");
            }
            macauhoi = macauhoi.Substring(0, macauhoi.Length -1);
            dethiDal.saveChitietde(idDe, macauhoi);
        }
    }
}
