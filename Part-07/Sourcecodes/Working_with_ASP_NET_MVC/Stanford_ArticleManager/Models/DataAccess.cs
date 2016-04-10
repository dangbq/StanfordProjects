using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Stanford_ArticleManager.Models
{
    public class DataAccess
    {
        /// <summary>
        /// Hàm lấy danh sách bảng dữ liệu từ db
        /// Author          Date            Comments
        /// DangBQ          29/12/2015      Tạo mới
        /// </summary>
        /// <param name="strSQL"></param>
        /// <returns></returns>
        public static DataTable GetTable(string strSQL)
        {
            //Khai báo biến
            DataTable dt = new DataTable();

            //Khai báo 1 đối tượng kết nối
            SqlConnection conn = new SqlConnection(Common.ConnectString);

            try
            {
                //Mở kết nối
                conn.Open();

                //Tạo đối tượng để thực hiện công việc
                SqlCommand comm = new SqlCommand();

                //Thực hiện công việc trên đâu
                comm.Connection = conn;

                //Kiểu thực hiện công việc
                comm.CommandType = CommandType.Text;

                //Công việc cần thực hiện
                comm.CommandText = strSQL;

                //Đưa dữ liệu vào adapter
                SqlDataAdapter adapter = new SqlDataAdapter(comm);

                //Đổ dữ liệu ra dt
                adapter.Fill(dt);

            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                //Đóng kết nối
                conn.Close();
            }

            return dt;
        }

        /// <summary>
        /// Hàm thực hiện công việc
        /// </summary>
        /// <param name="strSQL"></param>
        /// <param name="pars"></param>
        /// <returns></returns>
        public static bool Execute(string strSQL, SqlParameter[] pars, bool isProcedured = false)
        {
            bool isSuccess = false;

            //Khai báo 1 đối tượng kết nối
            SqlConnection conn = new SqlConnection(Common.ConnectString);

            try
            {
                //Mở kết nối
                conn.Open();

                //Tạo đối tượng để thực hiện công việc
                SqlCommand comm = new SqlCommand();

                //Thực hiện công việc trên đâu
                comm.Connection = conn;

                //Nếu là thủ tục
                if (isProcedured)
                {
                    comm.CommandType = CommandType.StoredProcedure;
                }
                else
                {
                    //Kiểu thực hiện công việc
                    comm.CommandType = CommandType.Text;
                }

                //Công việc cần thực hiện
                comm.CommandText = strSQL;

                //Nếu có tham số thì thêm vào comm
                if (pars != null && pars.Length > 0)
                {
                    comm.Parameters.AddRange(pars);
                }

                //Thực thi các công việc như thêm mới, sửa, xóa,...
                isSuccess = comm.ExecuteNonQuery() > 0 ? true : false; //a>b ? a : b

            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                //Đóng kết nối
                conn.Close();
            }

            return isSuccess;
        }
    }
}