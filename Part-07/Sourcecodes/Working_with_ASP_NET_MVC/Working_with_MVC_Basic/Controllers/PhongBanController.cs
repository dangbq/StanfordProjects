using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Working_with_MVC_Basic.Models;

namespace Working_with_MVC_Basic.Controllers
{
    public class PhongBanController : Controller
    {
        /// <summary>
        /// Hiển thị danh sách phòng ban
        /// </summary>
        /// <returns></returns>

        public ActionResult DanhSach()
        {
            PhongBanBusiness phongBanBusiness = new PhongBanBusiness();

            //Lấy danh sách các phòng ban trong hệ thống
            List<PhongBan> lstPhongBan = phongBanBusiness.LayDanhSachPhongBan();

            //Trả về danh sách để hiển thị lên view
            return View(lstPhongBan);
        }

        public ActionResult ThemMoi() 
        {
            return View();
        }

        [HttpPost]
        public ActionResult ChiTiet(PhongBan objPhong) 
        {
            return View(objPhong);
        }

        public ActionResult Demo() 
        {
            ViewBag.Title = "Làm việc với ASP.NET MVC - Stanford";

            return View();
        }
    }
}
