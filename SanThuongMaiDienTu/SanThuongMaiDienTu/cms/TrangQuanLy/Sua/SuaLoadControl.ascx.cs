using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SanThuongMaiDienTu.cms.TrangQuanLy.Sửa
{
    
    public partial class SuaLoadControl : System.Web.UI.UserControl
    {
        private string maSp = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["maSp"] != null)
            {
                maSp = Request.QueryString["maSp"];
                ltrmasp.Text= maSp;
            }
        }
    }
}