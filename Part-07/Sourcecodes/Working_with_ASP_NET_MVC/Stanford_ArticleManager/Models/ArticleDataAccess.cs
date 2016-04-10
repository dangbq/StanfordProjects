using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Stanford_ArticleManager.Models
{
    public class ArticleDataAccess
    {
        /// <summary>
        /// Hàm lấy danh sách bài viết trong db
        /// Author          Date        Comments
        /// DangBQ          25/02/2016  Tạo mới
        /// </summary>
        /// <returns></returns>
        public List<stanfArticle> LayDanhSachBaiViet(string tukhoa) 
        {
            List<stanfArticle> lstBaiViet = new List<stanfArticle>();

            SqlConnection conn = new SqlConnection(Common.ConnectString);

            try
            {
                conn.Open();

                SqlCommand comm = new SqlCommand();

                string strSQL = "Select Id, Title, Description, ImageName, DateCreated, CategoryId from stanfArticle where 1=1";

                if (!string.IsNullOrEmpty(tukhoa))
                {
                    strSQL += string.Format(" AND (Title like N'%{0}%' or Description like N'%{0}%')", tukhoa);
                }

                comm.CommandText = strSQL;

                comm.CommandType = CommandType.Text;

                comm.Connection = conn;

                SqlDataReader reader = comm.ExecuteReader();

                stanfArticle objArticle = null;

                while (reader.Read())
                {
                    objArticle = new stanfArticle();

                    //Gán giá trị cho các thuộc tính lấy được từ db
                    objArticle.Id = reader.GetInt32(reader.GetOrdinal("Id"));

                    objArticle.Title = reader.GetString(reader.GetOrdinal("Title"));

                    if (!reader.IsDBNull(reader.GetOrdinal("Description")))
                    {
                        objArticle.Description = reader.GetString(reader.GetOrdinal("Description"));
                    }

                    if (!reader.IsDBNull(reader.GetOrdinal("ImageName")))
                    {
                        objArticle.ImageName = reader.GetString(reader.GetOrdinal("ImageName"));
                    }

                    if (!reader.IsDBNull(reader.GetOrdinal("DateCreated")))
                    {
                        objArticle.DateCreated = reader.GetDateTime(reader.GetOrdinal("DateCreated"));
                    }

                    if (!reader.IsDBNull(reader.GetOrdinal("CategoryId")))
                    {
                        objArticle.CategoryId = reader.GetInt32(reader.GetOrdinal("CategoryId"));

                    }

                    //Thêm vào list
                    lstBaiViet.Add(objArticle);
                }
            }
            catch (Exception ex)
            {
                
                throw ex;
            }
            return lstBaiViet;
        }

        /// <summary>
        /// Hàm lấy thông tin chi tiết từ db
        /// </summary>
        /// <param name="articleId">Id bài viết</param>
        /// <returns>Chi tiết thông tin bài viết</returns>
        public stanfArticle LayThongTinChiTietBaiViet(int articleId)
        {
            stanfArticle objArticle = null;

            SqlConnection conn = new SqlConnection(Common.ConnectString);

            try
            {
                conn.Open();

                SqlCommand comm = new SqlCommand();

                comm.CommandText = "Select Id, Title, Description, ArticleContent, ImageName, DateCreated, CategoryId from stanfArticle where Id = " + articleId;

                comm.CommandType = CommandType.Text;

                comm.Connection = conn;

                SqlDataReader reader = comm.ExecuteReader();

                if (reader.Read())
                {
                    objArticle = new stanfArticle();

                    //Gán giá trị cho các thuộc tính lấy được từ db
                    objArticle.Id = reader.GetInt32(reader.GetOrdinal("Id"));

                    objArticle.Title = reader.GetString(reader.GetOrdinal("Title"));

                    if (!reader.IsDBNull(reader.GetOrdinal("Description")))
                    {
                        objArticle.Description = reader.GetString(reader.GetOrdinal("Description"));
                    }

                    if (!reader.IsDBNull(reader.GetOrdinal("ArticleContent")))
                    {
                        objArticle.ArticleContent = reader.GetString(reader.GetOrdinal("ArticleContent"));
                    }

                    if (!reader.IsDBNull(reader.GetOrdinal("ImageName")))
                    {
                        objArticle.ImageName = reader.GetString(reader.GetOrdinal("ImageName"));
                    }

                    if (!reader.IsDBNull(reader.GetOrdinal("DateCreated")))
                    {
                        objArticle.DateCreated = reader.GetDateTime(reader.GetOrdinal("DateCreated"));
                    }

                    if (!reader.IsDBNull(reader.GetOrdinal("CategoryId")))
                    {
                        objArticle.CategoryId = reader.GetInt32(reader.GetOrdinal("CategoryId"));

                    }
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
            return objArticle;
        }

        public bool ThemMoiBaiViet(stanfArticle objArticle)
        {
            SqlParameter[] pars = new SqlParameter[6];

            pars[0] = new SqlParameter("@Title", SqlDbType.NVarChar, 250);
            pars[0].Value = objArticle.Title;

            pars[1] = new SqlParameter("@Description", SqlDbType.NVarChar, 1000);
            pars[1].Value = objArticle.Description;

            pars[2] = new SqlParameter("@ArticleContent", SqlDbType.NText);
            pars[2].Value = objArticle.ArticleContent;

            pars[3] = new SqlParameter("@ImageName", SqlDbType.NVarChar, 250);
            pars[3].Value = objArticle.ImageName;

            pars[4] = new SqlParameter("@DateCreated", SqlDbType.DateTime);
            pars[4].Value = objArticle.DateCreated;

            pars[5] = new SqlParameter("@CategoryId", SqlDbType.Int);
            pars[5].Value = objArticle.CategoryId;

            return DataAccess.Execute("ThemMoiBaiViet", pars, true);

        }

        public bool SuaBaiViet(stanfArticle objArticle)
        {
            SqlParameter[] pars = new SqlParameter[7];

            pars[0] = new SqlParameter("@Title", SqlDbType.NVarChar, 250);
            pars[0].Value = objArticle.Title;

            pars[1] = new SqlParameter("@Description", SqlDbType.NVarChar, 1000);
            pars[1].Value = objArticle.Description;

            pars[2] = new SqlParameter("@ArticleContent", SqlDbType.NText);
            pars[2].Value = objArticle.ArticleContent;

            pars[3] = new SqlParameter("@ImageName", SqlDbType.NVarChar, 250);
            pars[3].Value = objArticle.ImageName;

            pars[4] = new SqlParameter("@DateCreated", SqlDbType.DateTime);
            pars[4].Value = objArticle.DateCreated;

            pars[5] = new SqlParameter("@CategoryId", SqlDbType.Int);
            pars[5].Value = objArticle.CategoryId;

            pars[6] = new SqlParameter("@Id", SqlDbType.Int);
            pars[6].Value = objArticle.Id;

            return DataAccess.Execute("SuaBaiViet", pars, true);

        }

        public bool XoaBaiViet(int articleId)
        {
            SqlParameter[] pars = new SqlParameter[1];

            pars[0] = new SqlParameter("@Id", SqlDbType.Int);
            pars[0].Value = articleId;

            return DataAccess.Execute("XoaThongTinBaiViet", pars, true);

        }
    }
}