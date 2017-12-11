using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Thi.Entities;

namespace Thi.DAL
{
    class DethiDAL
    {
        KetNoiDB db = new KetNoiDB();

        public DataTable getMucDo()
        {
            string query = @"select mamucdo, tenmucdo from mucdo";
            DataTable dt = db.GetDataTable(query);
            return dt;
        }

        public DataTable getSoluongcauhoi()
        {
            string query = @"select masoluong
                            ,' ' +  CONVERT(varchar(10), tongsocauhoi) + 
                            ' ( ' + CONVERT(varchar(10), thoigianthi) +' phút )' 
                            as tongsocauhoi from soluongcauhoi";
            DataTable dt = db.GetDataTable(query);
            return dt;
        }

        public DataTable getList()
        {
            string query = @"select top(20) ROW_NUMBER() OVER(order by ma) as numIndex ,
                            thongtincauhoi, dapana, dapanb, dapanc, dapand, dapandung from cauhoi";
            DataTable dt = db.GetDataTable(query);
            return dt;
        }

        public DataTable getPhanchia(int mucdo, int soluong)
        {
            string query = @"select mucdocauhoi, soluongcau from phanchiacauhoi 
                            where mamucdo = " + mucdo + " and masoluong = " + soluong;
            return db.GetDataTable(query);
        }

        public DataTable getListCauHoi(int mucdo, int soluong, int offset)
        {
            string query = @"select ROW_NUMBER() OVER(order by a.ma) + {0} as numIndex
                            , a.ma
                            , a.thongtincauhoi
                            , a.dapana
                            , a.dapanb
                            , a.dapanc
                            , a.dapand
                            , a.dapandung
                            from (select top({1})  ma, thongtincauhoi, dapana, dapanb, dapanc, dapand, dapandung 
                            from cauhoi where  mamucdo = {2} order by NEWID()) a";
            query = string.Format(query, offset, soluong, mucdo);

            return db.GetDataTable(query);
        }

        public int getThoigianThi(int soluong)
        {
            string query = @"select thoigianthi from soluongcauhoi where masoluong = " + soluong;
            return Convert.ToInt32(db.GetValue(query));
        }

        public int saveDethi(int mucdo, int soluong, long ngaytao)
        {
            string query = @"insert into dethi(ngaytao, mamucdo, masoluongcauhoi) 
                             values(" + ngaytao + ", " + mucdo + ", " + soluong + ")";

            db.ExcuteNonQuery(query);

            string query1 = @"select max(ma) from dethi";

            return Convert.ToInt32(db.GetValue(query1));
        }

        public void saveChitietde(int made, string macauhoi)
        {
            string query = @"insert into chitietde(made, macauhoi) 
                            values("+made+", '"+macauhoi+"')";
            db.ExcuteNonQuery(query);
        }
    }
}
