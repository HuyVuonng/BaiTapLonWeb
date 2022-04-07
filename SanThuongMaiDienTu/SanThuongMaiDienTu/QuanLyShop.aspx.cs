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
    public partial class QuanLyShop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["TenShop"] != null){
                    ltrTenShop.Text = Session["TenShop"].ToString();
                    LayAllDSHangCuaShop();
                }
            }
        }

        private DataTable getAllDSHangCuaShop()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["lienKetSQl"].ConnectionString;
            using (SqlConnection Cnn = new SqlConnection(connectionString))
            {
                using (SqlCommand Cmd = new SqlCommand("prLayHangHoaTheoNguoiBan", Cnn))
                {
                    Cmd.CommandType = CommandType.StoredProcedure;
                    Cmd.Parameters.Add("@taikhoan", Session["Email"].ToString());
                    using (SqlDataAdapter Da = new SqlDataAdapter(Cmd))
                    {
                        DataTable tbl = new DataTable("tblAllDSHangCuaShop");
                        Da.Fill(tbl);
                        return tbl;
                    }
                }
            }
        }

        private void LayAllDSHangCuaShop()
        {
            DataTable tblAllDSHangCuaShop = getAllDSHangCuaShop();
            for (int i = 0; i < tblAllDSHangCuaShop.Rows.Count; i++)
            {
                ltrDanhSach.Text += @"<tr class='hangtbl'>
                                     <td class='cotTieuDe cotTenhang'>"+tblAllDSHangCuaShop.Rows[i]["sTenHang"] + @"</td>
                                     <td class='cotTieuDe cotLoaihang'>" + tblAllDSHangCuaShop.Rows[i]["sTenLoaiHang"] + @"</td>
                                     <td class='cotTieuDe cotAnhBia'><img class='anhSp' src='img/" + tblAllDSHangCuaShop.Rows[i]["AnhBia"] + @"'></td>
                                     <td class='cotTieuDe cotMota'>" + tblAllDSHangCuaShop.Rows[i]["sMoTa"] + @"</td>
                                     <td class='cotTieuDe cotSoLuong'>" + tblAllDSHangCuaShop.Rows[i]["iSoLuongCon"] + @"</td>
                                     <td class='cotTieuDe cotGiaban'>" + tblAllDSHangCuaShop.Rows[i]["fGiaBan"] + @"</td>
                                    <td class='cotTieuDe cotTacvu'>
                                       <a href='#' class='Them'>Thêm</a>
                                       <a href='#' class='SuaBTN'>Sửa</a>
                                       <a href = '#' class='Xoa'>Xóa</a>
                                    </td>
                                </tr>";
            }
        }

    }
}