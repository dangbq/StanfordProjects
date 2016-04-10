using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Stanford_ArticleManager.Models
{
    public class CategoryDataAccess
    {
        public List<stanfCategory> LayDanhSachChuDe()
        {
            List<stanfCategory> lstChuDe = new List<stanfCategory>();

            SqlConnection conn = new SqlConnection(Common.ConnectString);

            try
            {
                conn.Open();

                SqlCommand comm = new SqlCommand();

                comm.CommandText = "Select Id, CategoryName from stanfCategory";

                comm.CommandType = CommandType.Text;

                comm.Connection = conn;

                SqlDataReader reader = comm.ExecuteReader();

                stanfCategory objCategory = null;

                while (reader.Read())
                {
                    objCategory = new stanfCategory();

                    //Gán giá trị cho các thuộc tính lấy được từ db
                    objCategory.Id = reader.GetInt32(reader.GetOrdinal("Id"));

                    objCategory.CategoryName = reader.GetString(reader.GetOrdinal("CategoryName"));

                    //Thêm vào list
                    lstChuDe.Add(objCategory);
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return lstChuDe;
        }

    }
}