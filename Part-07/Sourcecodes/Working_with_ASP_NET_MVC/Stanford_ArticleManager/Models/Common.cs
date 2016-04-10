using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Stanford_ArticleManager.Models
{
    public class Common
    {
        /// <summary>
        /// Tạo thuộc tính để chứa chuỗi kết nối đến cơ sở dữ liệu với thông tin lấy từ web.config
        /// </summary>
        private static string _ConnectString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnecStringBaiViet"].ConnectionString;

        public static string ConnectString
        {
            get { return Common._ConnectString; }
            set { Common._ConnectString = value; }
        }
    }
}