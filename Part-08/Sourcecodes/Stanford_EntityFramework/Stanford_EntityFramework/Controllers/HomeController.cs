using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Stanford_EntityFramework.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/

        public ActionResult Index()
        {
            ViewBag.Title = "Làm việc với Linq & Entity Framework";

            //Ví 1: 1 mảng số nguyên
            int[] a = new int[10] { 10, 20, 60, 35, 55, 40, 90, 80, 70, 5 };

            /*
 
            int temp = 0;

            for (int i = 0; i < a.Length-1; i++)
            {
                for (int j = i + 1; j < a.Length; j++)
                {
                    if (a[i] > a[j])
                    { 
                        //Đổi vị trí
                        temp = a[i];

                        a[i] = a[j];

                        a[j] = temp;
                    }
                }
            }*/

            //Sắp xếp tăng dần bằng cú pháp của Linq
            var lstDanhSach = from item in a
                              orderby item
                              select item;

            //Ví dụ 2: Lấy tập số chẵn và số lẻ
            List<int> lstSoChan = new List<int>();

            List<int> lstSoLe = new List<int>();

            //Duyệt vòng lặp
            for (int i = 0; i < a.Length; i++)
            {
                //Nếu là chẵn
                if (a[i] % 2 == 0)
                {
                    //Đưa vào danh sách
                    lstSoChan.Add(a[i]);
                }

                //Nếu là lẻ
                if (a[i] % 2 == 0)
                {
                    //Đưa vào danh sách
                    lstSoLe.Add(a[i]);
                }
            }

            //Lấy danh sách số chẵn bằng Linq
            var lstSoChan1 = from item in a
                             where item % 2 == 0
                             select item;

            //Lấy danh sách số lẻ bằng Linq
            var lstSoLe1 = from item in a
                           where item % 2 != 0
                           select item;

            var lstSoLe2 = a.Where(item => item % 2 != 0);


            //Lấy max, min
            int max = a[0], min = a[0];

            //Duyệt để tìm max, min
            for (int i = 1; i < a.Length; i++)
            {
                //Max
                if (a[i] > max)
                {
                    max = a[i];
                }

                //Min
                if (a[i] < min)
                {
                    min = a[i];
                }
            }

            //Max, min
            max = a.Max();

            min = a.Min();

            return View();
        }

    }
}
