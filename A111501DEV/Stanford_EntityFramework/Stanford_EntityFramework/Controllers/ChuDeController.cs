using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Stanford_EntityFramework.Models;

namespace Stanford_EntityFramework.Controllers
{
    public class ChuDeController : Controller
    {
        /// <summary>
        /// Lấy thông tin chủ đề bài viết trong db bằng Entity Framework
        /// </summary>
        /// <returns></returns>
        public ActionResult DanhSach()
        {
            //Lấy danh sách chủ đề từ db
            List<stanfCategory> lstChuDe = Common.Entities.stanfCategories.ToList();

            return View(lstChuDe);
        }

        /// <summary>
        /// Hiển thị giao diện thêm mới
        /// </summary>
        /// <returns></returns>
        public ActionResult ThemMoi() 
        {
            return View();
        }

        /// <summary>
        /// Thực hiện xử lý thêm mới
        /// </summary>
        /// <param name="obj"></param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult ThemMoi(stanfCategory obj)
        {
            if (ModelState.IsValid)
            {
                Common.Entities.stanfCategories.Add(obj);

                //Lưu sự thay đổi
                Common.Entities.SaveChanges();

                return RedirectToAction("DanhSach");
            }

            return View();
        }

        public ActionResult SuaThongTin(int id)
        {
            //Lấy đối tượng chủ đề theo id
            stanfCategory objCag = Common.Entities.stanfCategories.Find(id);

            return View(objCag);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult SuaThongTin(stanfCategory objCag, int id)
        {
            if (objCag != null)
            {
                stanfCategory objCategory = Common.Entities.stanfCategories.Find(id);

                Common.Entities.Entry(objCategory).State = System.Data.EntityState.Modified;
                Common.Entities.Entry(objCategory).CurrentValues.SetValues(objCag);

                Common.Entities.SaveChanges();

                return RedirectToAction("DanhSach");
            }

            return View(objCag);
        }

        public ActionResult XoaThongTin(int id)
        {
            stanfCategory objCategory = Common.Entities.stanfCategories.Find(id);

            if (objCategory != null)
            {
                Common.Entities.stanfCategories.Remove(objCategory);

                Common.Entities.SaveChanges();

                return RedirectToAction("DanhSach");
            }

            return View();
        }
    }
}
