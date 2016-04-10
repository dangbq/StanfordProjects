using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Working_with_ASP_NET_MVC.Controllers
{
    public class PhongBanController : Controller
    {
        // GET: PhongBan
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ChiTiet() 
        {
            return View();
        }
    }
}