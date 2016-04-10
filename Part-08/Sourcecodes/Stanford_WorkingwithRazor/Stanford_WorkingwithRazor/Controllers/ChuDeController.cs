using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Stanford_WorkingwithRazor.Models;

namespace Stanford_WorkingwithRazor.Controllers
{
    public class ChuDeController : Controller
    {
        // GET: ChuDe
        public ActionResult DanhSach(string tukhoa)
        {
            IQueryable<stanfCategory> lstCag = Common.Entities.stanfCategories;

            if (!string.IsNullOrEmpty(tukhoa))
            {
                lstCag = lstCag.Where(p => p.CategoryName.Contains(tukhoa));
            }

            return View(lstCag);
        }

        public ActionResult ThemMoi() 
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult ThemMoi(stanfCategory objCag)
        {
            if (ModelState.IsValid)
            {
                Common.Entities.stanfCategories.Add(objCag);

                Common.Entities.SaveChanges();

                return RedirectToAction("DanhSach");
            }

            return View();
        }
        
        /// <summary>
        /// Hiển thị thông tin chi tiết chủ đề trước khi sửa
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult SuaThongTin(int id) 
        {
            stanfCategory objCag = Common.Entities.stanfCategories.Where(p => p.Id == id).First<stanfCategory>();

            return View(objCag);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult SuaThongTin(int id, stanfCategory objCag)
        {
            if (ModelState.IsValid)
            {
                stanfCategory objCategory = Common.Entities.stanfCategories.Find(id);

                if (objCategory != null)
                {
                    Common.Entities.Entry(objCategory).State = System.Data.Entity.EntityState.Modified;

                    Common.Entities.Entry(objCategory).CurrentValues.SetValues(objCag);

                    Common.Entities.SaveChanges();

                    return RedirectToAction("DanhSach");
                }
            }

            return View();
        }

        /// <summary>
        /// Xóa thông tin chủ đề
        /// Author          Date            Comments
        /// DangBQ          14/03/2016      Tạo mới
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult XoaThongTin(int id)
        {
            stanfCategory objCag = Common.Entities.stanfCategories.Find(id);

            if(objCag !=null)
            {
                Common.Entities.stanfCategories.Remove(objCag);

                Common.Entities.SaveChanges();

                return RedirectToAction("DanhSach");
            }

            return View();
        }

        public ActionResult DemoBootstrap() 
        {
            return View();
        }
    }
}