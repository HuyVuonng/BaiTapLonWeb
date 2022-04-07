using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SanThuongMaiDienTu
{
    public partial class TrangChu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["KhachHang"] != null && Session["KhachHang"].ToString() == "1")
                {
                    //Đã đăng nhập
                    plDaDN.Visible = true;
                    plChuaDN.Visible = false;
                    if (Session["TenKH"] != null)
                        ltrTenKH.Text = Session["TenKH"].ToString();
                }
                else
                {
                    plDaDN.Visible = false;
                    plChuaDN.Visible = true;
                }
            }
        }

        protected void lbtDangXuat_Click(object sender, EventArgs e)
        {
            Session["KhachHang"] = null;
            Session["MaKh"] = null;
            Session["TenKH"] = null;
            Session["SDT"] = null;
            Session["sDiaChi"] = null;
            Session["Email"] = null;
            Session["Mk"] = null;
            Response.Redirect("/TrangChu.aspx");
        }

        protected void lbtTimKiem_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtTimKiem.Text))
            {
                Response.Redirect("/TrangChu.aspx?modul=TimKiem&&SanPham="+ txtTimKiem.Text+@"");
            }
        }
    }
}