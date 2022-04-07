﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrangThuongMaiDienTu.cms.TrangChu.DoDienTu
{
    public partial class DoDienTuLoadControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LayAllSanPhamDienTu();
            }
            
        }

        private DataTable getAllMatHangDienTu()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["lienKetSQl"].ConnectionString;
            using (SqlConnection Cnn = new SqlConnection(connectionString))
            {
                using (SqlCommand Cmd = new SqlCommand("layLoaiHangDienTu", Cnn))
                {
                    Cmd.CommandType = CommandType.StoredProcedure;
                    using (SqlDataAdapter Da = new SqlDataAdapter(Cmd))
                    {
                        DataTable tbl = new DataTable("tblAllMatHangDienTu");
                        Da.Fill(tbl);
                        return tbl;
                    }
                }
            }
        }
        private void LayAllSanPhamDienTu()
        {
            DataTable tblAllMatHangDienTu = getAllMatHangDienTu();
            for (int i = 0; i < tblAllMatHangDienTu.Rows.Count; i++)
            {

                ltrListMatHang.Text += @"<div class='grid__colum-2-4 l-2-4 m-4 c-12'>
                                    <a class='home-product-item' href='#'>
                                        <div class='home-product-item__img'
                                            style='background-image: url(/img/" + tblAllMatHangDienTu.Rows[i]["AnhBia"] + @");'>
                                        </div>
                                        <h4 class='home-product-item__name'>" + tblAllMatHangDienTu.Rows[i]["sTenHang"] + @"</h4>
                                        <div class='home-product-item-price'>
                                            <span class='home-product-item-price-new'>" + tblAllMatHangDienTu.Rows[i]["fGiaBan"] + "đ" + @"</span>
                                        </div>
                                        <div class='home-product-item-action'>
                                            <span class='home-product-item_like home-product-item_like--liked'>
                                                <i class='home-product-item_like-icon-emty far fa-heart'></i>
                                                <i class='home-product-item_like-icon-fill fas fa-heart'></i>
                                            </span>
                                            <div class='home-product-item_rating'>
                                                <i class='home-product-item_gold fas fa-star'></i>
                                                <i class='home-product-item_gold fas fa-star'></i>
                                                <i class='home-product-item_gold fas fa-star'></i>
                                                <i class='home-product-item_gold fas fa-star'></i>
                                                <i class='fas fa-star'></i>
                                            </div>
                                            <span class='home-product-item_sold'>100 đã bán</span>
                                        </div>
                                        <!-- <div class='home-product-item-origin'>
                                            <span class='home-product-item_brand'>Whoo</span>
                                            <span class='home-product-item-origin-name'>Nhật Bản</span>
                                        </div> -->
                                        <div class='home-product-item_favorite'>
                                            <i class='fas fa-check'></i>
                                            <span>Yêu thích</span>
                                        </div>
                                    </a>
                                </div>";
            }
        }
    }
}