using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Working_with_MVC_Basic.Models
{
    public class PhongBanBusiness
    {
        /// <summary>
        /// Lấy danh sách phòng ban fix cứng
        /// Author      Date        Comments
        /// DangBQ      18/02/2016  Tạo mới
        /// </summary>
        /// <returns></returns>
        public List<PhongBan> LayDanhSachPhongBan() 
        {
            List<PhongBan> lstPhongBan = new List<PhongBan>();

            PhongBan objPhong = new PhongBan();

            //Tạo đối tượng thứ 1
            objPhong.MaPhong = 1;
            objPhong.TenPhong = "Công nghệ thông tin";
            lstPhongBan.Add(objPhong);

            //Tạo đối tượng thứ 2
            objPhong = new PhongBan();
            objPhong.MaPhong = 2;
            objPhong.TenPhong = "Kinh doanh";
            lstPhongBan.Add(objPhong);

            //Tạo đối tượng thứ 3
            objPhong = new PhongBan();
            objPhong.MaPhong = 3;
            objPhong.TenPhong = "Kế toán";
            lstPhongBan.Add(objPhong);

            return lstPhongBan;
        }
    }
}