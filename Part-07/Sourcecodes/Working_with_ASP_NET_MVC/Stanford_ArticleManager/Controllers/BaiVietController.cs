using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Stanford_ArticleManager.Models;

namespace Stanford_ArticleManager.Controllers
{
    public class BaiVietController : Controller
    {
        //
        // GET: /BaiViet/DanhSach

        public ActionResult DanhSach(string tukhoa)
        {
            ArticleDataAccess articleDataAccess = new ArticleDataAccess();

            List<stanfArticle> lstBaiViet = articleDataAccess.LayDanhSachBaiViet(tukhoa);

            return View(lstBaiViet);
        }

        //GET: /BaiViet/ThemMoi
        public ActionResult ThemMoi() 
        {
            return View();
        }

        /// <summary>
        /// Hàm xử lý thêm mới thông tin bài viết
        /// </summary>
        /// <param name="objArticle"></param>
        /// <returns></returns>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult ThemMoi(stanfArticle objArticle)
        {
            //Nếu không nhập tiêu đề thì thực hiện đưa lỗi
            if (string.IsNullOrEmpty(objArticle.Title))
            {
                ModelState.AddModelError("Title", "Bạn cần nhập tiêu đề trước khi thực hiện");
            }

            //Nếu không có lỗi mới thực hiện
            if (ModelState.IsValid)
            {
                ArticleDataAccess articleDataAccess = new ArticleDataAccess();

                objArticle.DateCreated = DateTime.Now;

                bool isSuccess = articleDataAccess.ThemMoiBaiViet(objArticle);

                //Nếu thành công thì trở về danh sách
                if (isSuccess)
                {
                    return RedirectToAction("DanhSach");
                }

            }

            return View();
        }

        /// <summary>
        /// Hiển thị thông tin chi tiết bài viết trước khi sửa
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult SuaThongTin(int id) 
        {
            ArticleDataAccess articleDataAccess = new ArticleDataAccess();

            stanfArticle objArticle = articleDataAccess.LayThongTinChiTietBaiViet(id);

            return View(objArticle);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult SuaThongTin(stanfArticle objArticle)
        {
            ArticleDataAccess articleDataAccess = new ArticleDataAccess();

            bool isSuccess = articleDataAccess.SuaBaiViet(objArticle);

            //Nếu thành công thì trở về danh sách
            if (isSuccess)
            {
                return RedirectToAction("DanhSach");
            }

            return View();
        }

        /// <summary>
        /// Hàm xóa thông tin bài viết
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult XoaBaiViet(int id)
        {
            ArticleDataAccess articleDataAccess = new ArticleDataAccess();

            bool isDeleted = articleDataAccess.XoaBaiViet(id);

            if (isDeleted)
            {
                return RedirectToAction("DanhSach");
            }

            return View();
        }
    }
}
