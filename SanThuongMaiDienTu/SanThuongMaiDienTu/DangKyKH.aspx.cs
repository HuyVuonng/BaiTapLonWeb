using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SanThuongMaiDienTu
{
    public partial class DangKyKH : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtDangKy_Click(object sender, EventArgs e)
        {

            string connectionString = ConfigurationManager.ConnectionStrings["lienKetSQl"].ConnectionString;
            if (txtMK.Text == txtNhapLaiMK.Text)
            {
                using (SqlConnection Cnn = new SqlConnection(connectionString))
                {
                    using (SqlCommand Cmd = new SqlCommand("themTKKhachHang", Cnn))
                    {
                        Cmd.CommandType = CommandType.StoredProcedure;
                        Cmd.Parameters.AddWithValue("@hoten", txtHoTen.Text);
                        Cmd.Parameters.AddWithValue("@taikhoan", txtEmail.Text);
                        Cmd.Parameters.AddWithValue("@matkhau", txtMK.Text);
                        Cmd.Parameters.AddWithValue("@diachi", txtDiaChi.Text);
                        Cmd.Parameters.AddWithValue("@sdt", txtSDT.Text);

                        Cnn.Open();
                        int n = Cmd.ExecuteNonQuery();
                        Cnn.Close();
                        if (n > 0)
                        {
                            lbThongBao.Text = "Đăng ký thành công!";
                            txtHoTen.Text = txtEmail.Text = txtDiaChi.Text= txtSDT.Text = string.Empty;
                        }
                    }//cmd
                }//Cnn
            }
            else
            {
                lbThongBao.Text = "Mật khẩu không trùng khớp mời nhập lại!";
            }
        }

    }
}
