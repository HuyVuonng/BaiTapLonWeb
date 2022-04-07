<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TrangChuLoadControl.ascx.cs" Inherits="TrangThuongMaiDienTu.cms.TrangChu.TrangChuLoadControl" %>
<asp:PlaceHolder ID="plTrangchuLoadControl" runat="server" Visible="false"></asp:PlaceHolder>
<asp:PlaceHolder ID="plTRangchu" runat="server" Visible="true">
     <div class="grid__row app__content">

                    <div class="grid__colum-10 l-12 c-12">
                        <!-- <div class="home-filter">
                            <span class="home-filter_laber">Sắp xếp theo</span>
                            <button class="home-filter_btn btn">Phổ biến</button>
                            <button class="home-filter_btn btn btn-primary">Mới nhất</button>
                            <button class="home-filter_btn btn">Bán chạy nhất</button>
                            <div class="select-input">
                                <span class="select-input_lable">Giá</span>
                                <i class="select-input_lable-icon fas fa-angle-down"></i>
                                <ul class="select-input_list">
                                    <li class="select-input_item">
                                        <a href="" class="select-input_link">Giá thấp đến cao</a>
                                    </li>
                                    <li class="select-input_item">
                                        <a href="" class="select-input_link">Giá cao đến thấp</a>
                                    </li>
                                </ul>
                            </div>
                        
                            <div class="home-filter_page">
                                <span class="home-filter_page-num">
                                    <span class="home-filter_page-curent">1</span>/14
                                </span>
                        
                                <div class="home-filter_page-control">
                                    <a href="" class="home-filter_page-btn home-filter_page-btn--disabled"> <i
                                            class="home-filter_page-icon fas fa-angle-left"></i></a>
                                    <a href="" class="home-filter_page-btn"> <i class="home-filter_page-icon fas fa-angle-right"></i></a>
                                </div>
                            </div>
                        </div> -->


                        <div class="slider">
                            <div class="slide">
                                <img class="slide-img"
                                    src="https://cf.shopee.vn/file/20cc22afd0b5dfc359569ec36d40b616_xxhdpi" alt="">
                            </div>
                            <div class="slide">
                                <img class="slide-img"
                                    src="https://cf.shopee.vn/file/6736f986bb7a278b2d0358b0b59c9acb_xxhdpi" alt="">
                            </div>
                            <div class="slide">
                                <img class="slide-img"
                                    src="https://cf.shopee.vn/file/6eacae6ff35d10e76c63afb04bc59f3e_xxhdpi" alt="">
                            </div>
                        </div>

                        <div class="home-product">
                            <div class="grid__row">

                                 <asp:Literal ID="ltrListMatHang" runat="server"></asp:Literal>


                                <div class="grid__colum-2-4 l-2-4 m-4 c-12">
                                    <a class="home-product-item" href="#">
                                        <div class="home-product-item__img"
                                            style="background-image: url(https://cf.shopee.vn/file/cdf494d0b01e833facbf88e7dbf3df33_tn);">
                                        </div>
                                        <h4 class="home-product-item__name">Đèn ngủ chiếu ngàn sao mẫu mới 2020 ( dùng
                                            cáp sạc usb )</h4>
                                        <div class="home-product-item-price">
                                            <span class="home-product-item-price-new">41.000d</span>
                                        </div>
                                        <div class="home-product-item-action">
                                            <span class="home-product-item_like home-product-item_like--liked">
                                                <i class="home-product-item_like-icon-emty far fa-heart"></i>
                                                <i class="home-product-item_like-icon-fill fas fa-heart"></i>
                                            </span>
                                            <div class="home-product-item_rating">
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <span class="home-product-item_sold">100 đã bán</span>
                                        </div>
                                        <!-- <div class="home-product-item-origin">
                                            <span class="home-product-item_brand">Whoo</span>
                                            <span class="home-product-item-origin-name">Nhật Bản</span>
                                        </div> -->
                                        <div class="home-product-item_favorite">
                                            <i class="fas fa-check"></i>
                                            <span>Yêu thích</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="grid__colum-2-4 l-2-4 m-4 c-12">
                                    <a class="home-product-item" href="#">
                                        <div class="home-product-item__img"
                                            style="background-image: url(https://cf.shopee.vn/file/cdf494d0b01e833facbf88e7dbf3df33_tn);">
                                        </div>
                                        <h4 class="home-product-item__name">Đèn ngủ chiếu ngàn sao mẫu mới 2020 ( dùng
                                            cáp sạc usb )</h4>
                                        <div class="home-product-item-price">
                                            <span class="home-product-item-price-new">41.000d</span>
                                        </div>
                                        <div class="home-product-item-action">
                                            <span class="home-product-item_like home-product-item_like--liked">
                                                <i class="home-product-item_like-icon-emty far fa-heart"></i>
                                                <i class="home-product-item_like-icon-fill fas fa-heart"></i>
                                            </span>
                                            <div class="home-product-item_rating">
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <span class="home-product-item_sold">100 đã bán</span>
                                        </div>
                                        <!-- <div class="home-product-item-origin">
                                            <span class="home-product-item_brand">Whoo</span>
                                            <span class="home-product-item-origin-name">Nhật Bản</span>
                                        </div> -->
                                        <div class="home-product-item_favorite">
                                            <i class="fas fa-check"></i>
                                            <span>Yêu thích</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="grid__colum-2-4 l-2-4 m-4 c-12">
                                    <a class="home-product-item" href="#">
                                        <div class="home-product-item__img"
                                            style="background-image: url(https://cf.shopee.vn/file/cdf494d0b01e833facbf88e7dbf3df33_tn);">
                                        </div>
                                        <h4 class="home-product-item__name">Đèn ngủ chiếu ngàn sao mẫu mới 2020 ( dùng
                                            cáp sạc usb )</h4>
                                        <div class="home-product-item-price">
                                            <span class="home-product-item-price-new">41.000d</span>
                                        </div>
                                        <div class="home-product-item-action">
                                            <span class="home-product-item_like home-product-item_like--liked">
                                                <i class="home-product-item_like-icon-emty far fa-heart"></i>
                                                <i class="home-product-item_like-icon-fill fas fa-heart"></i>
                                            </span>
                                            <div class="home-product-item_rating">
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <span class="home-product-item_sold">100 đã bán</span>
                                        </div>
                                        <!-- <div class="home-product-item-origin">
                                            <span class="home-product-item_brand">Whoo</span>
                                            <span class="home-product-item-origin-name">Nhật Bản</span>
                                        </div> -->
                                        <div class="home-product-item_favorite">
                                            <i class="fas fa-check"></i>
                                            <span>Yêu thích</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="grid__colum-2-4 l-2-4 m-4 c-12">
                                    <a class="home-product-item" href="#">
                                        <div class="home-product-item__img"
                                            style="background-image: url(https://cf.shopee.vn/file/cdf494d0b01e833facbf88e7dbf3df33_tn);">
                                        </div>
                                        <h4 class="home-product-item__name">Đèn ngủ chiếu ngàn sao mẫu mới 2020 ( dùng
                                            cáp sạc usb )</h4>
                                        <div class="home-product-item-price">
                                            <span class="home-product-item-price-new">41.000d</span>
                                        </div>
                                        <div class="home-product-item-action">
                                            <span class="home-product-item_like home-product-item_like--liked">
                                                <i class="home-product-item_like-icon-emty far fa-heart"></i>
                                                <i class="home-product-item_like-icon-fill fas fa-heart"></i>
                                            </span>
                                            <div class="home-product-item_rating">
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <span class="home-product-item_sold">100 đã bán</span>
                                        </div>
                                        <!-- <div class="home-product-item-origin">
                                            <span class="home-product-item_brand">Whoo</span>
                                            <span class="home-product-item-origin-name">Nhật Bản</span>
                                        </div> -->
                                        <div class="home-product-item_favorite">
                                            <i class="fas fa-check"></i>
                                            <span>Yêu thích</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="grid__colum-2-4 l-2-4 m-4 c-12">
                                    <a class="home-product-item" href="#">
                                        <div class="home-product-item__img"
                                            style="background-image: url(https://cf.shopee.vn/file/cdf494d0b01e833facbf88e7dbf3df33_tn);">
                                        </div>
                                        <h4 class="home-product-item__name">Đèn ngủ chiếu ngàn sao mẫu mới 2020 ( dùng
                                            cáp sạc usb )</h4>
                                        <div class="home-product-item-price">
                                            <span class="home-product-item-price-new">41.000d</span>
                                        </div>
                                        <div class="home-product-item-action">
                                            <span class="home-product-item_like home-product-item_like--liked">
                                                <i class="home-product-item_like-icon-emty far fa-heart"></i>
                                                <i class="home-product-item_like-icon-fill fas fa-heart"></i>
                                            </span>
                                            <div class="home-product-item_rating">
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <span class="home-product-item_sold">100 đã bán</span>
                                        </div>
                                        <!-- <div class="home-product-item-origin">
                                            <span class="home-product-item_brand">Whoo</span>
                                            <span class="home-product-item-origin-name">Nhật Bản</span>
                                        </div> -->
                                        <div class="home-product-item_favorite">
                                            <i class="fas fa-check"></i>
                                            <span>Yêu thích</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="grid__colum-2-4 l-2-4 m-4 c-12">
                                    <a class="home-product-item" href="#">
                                        <div class="home-product-item__img"
                                            style="background-image: url(https://cf.shopee.vn/file/cdf494d0b01e833facbf88e7dbf3df33_tn);">
                                        </div>
                                        <h4 class="home-product-item__name">Đèn ngủ chiếu ngàn sao mẫu mới 2020 ( dùng
                                            cáp sạc usb )</h4>
                                        <div class="home-product-item-price">
                                            <span class="home-product-item-price-new">41.000d</span>
                                        </div>
                                        <div class="home-product-item-action">
                                            <span class="home-product-item_like home-product-item_like--liked">
                                                <i class="home-product-item_like-icon-emty far fa-heart"></i>
                                                <i class="home-product-item_like-icon-fill fas fa-heart"></i>
                                            </span>
                                            <div class="home-product-item_rating">
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <span class="home-product-item_sold">100 đã bán</span>
                                        </div>
                                        <!-- <div class="home-product-item-origin">
                                            <span class="home-product-item_brand">Whoo</span>
                                            <span class="home-product-item-origin-name">Nhật Bản</span>
                                        </div> -->
                                        <div class="home-product-item_favorite">
                                            <i class="fas fa-check"></i>
                                            <span>Yêu thích</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="grid__colum-2-4 l-2-4 m-4 c-12">
                                    <a class="home-product-item" href="#">
                                        <div class="home-product-item__img"
                                            style="background-image: url(https://cf.shopee.vn/file/cdf494d0b01e833facbf88e7dbf3df33_tn);">
                                        </div>
                                        <h4 class="home-product-item__name">Đèn ngủ chiếu ngàn sao mẫu mới 2020 ( dùng
                                            cáp sạc usb )</h4>
                                        <div class="home-product-item-price">
                                            <span class="home-product-item-price-new">41.000d</span>
                                        </div>
                                        <div class="home-product-item-action">
                                            <span class="home-product-item_like home-product-item_like--liked">
                                                <i class="home-product-item_like-icon-emty far fa-heart"></i>
                                                <i class="home-product-item_like-icon-fill fas fa-heart"></i>
                                            </span>
                                            <div class="home-product-item_rating">
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <span class="home-product-item_sold">100 đã bán</span>
                                        </div>
                                        <!-- <div class="home-product-item-origin">
                                            <span class="home-product-item_brand">Whoo</span>
                                            <span class="home-product-item-origin-name">Nhật Bản</span>
                                        </div> -->
                                        <div class="home-product-item_favorite">
                                            <i class="fas fa-check"></i>
                                            <span>Yêu thích</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="grid__colum-2-4 l-2-4 m-4 c-12">
                                    <a class="home-product-item" href="#">
                                        <div class="home-product-item__img"
                                            style="background-image: url(https://cf.shopee.vn/file/cdf494d0b01e833facbf88e7dbf3df33_tn);">
                                        </div>
                                        <h4 class="home-product-item__name">Đèn ngủ chiếu ngàn sao mẫu mới 2020 ( dùng
                                            cáp sạc usb )</h4>
                                        <div class="home-product-item-price">
                                            <span class="home-product-item-price-new">41.000d</span>
                                        </div>
                                        <div class="home-product-item-action">
                                            <span class="home-product-item_like home-product-item_like--liked">
                                                <i class="home-product-item_like-icon-emty far fa-heart"></i>
                                                <i class="home-product-item_like-icon-fill fas fa-heart"></i>
                                            </span>
                                            <div class="home-product-item_rating">
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <span class="home-product-item_sold">100 đã bán</span>
                                        </div>
                                        <!-- <div class="home-product-item-origin">
                                            <span class="home-product-item_brand">Whoo</span>
                                            <span class="home-product-item-origin-name">Nhật Bản</span>
                                        </div> -->
                                        <div class="home-product-item_favorite">
                                            <i class="fas fa-check"></i>
                                            <span>Yêu thích</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="grid__colum-2-4 l-2-4 m-4 c-12">
                                    <a class="home-product-item" href="#">
                                        <div class="home-product-item__img"
                                            style="background-image: url(https://cf.shopee.vn/file/cdf494d0b01e833facbf88e7dbf3df33_tn);">
                                        </div>
                                        <h4 class="home-product-item__name">Đèn ngủ chiếu ngàn sao mẫu mới 2020 ( dùng
                                            cáp sạc usb )</h4>
                                        <div class="home-product-item-price">
                                            <span class="home-product-item-price-new">41.000d</span>
                                        </div>
                                        <div class="home-product-item-action">
                                            <span class="home-product-item_like home-product-item_like--liked">
                                                <i class="home-product-item_like-icon-emty far fa-heart"></i>
                                                <i class="home-product-item_like-icon-fill fas fa-heart"></i>
                                            </span>
                                            <div class="home-product-item_rating">
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <span class="home-product-item_sold">100 đã bán</span>
                                        </div>
                                        <!-- <div class="home-product-item-origin">
                                            <span class="home-product-item_brand">Whoo</span>
                                            <span class="home-product-item-origin-name">Nhật Bản</span>
                                        </div> -->
                                        <div class="home-product-item_favorite">
                                            <i class="fas fa-check"></i>
                                            <span>Yêu thích</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="grid__colum-2-4 l-2-4 m-4 c-12">
                                    <a class="home-product-item" href="#">
                                        <div class="home-product-item__img"
                                            style="background-image: url(https://cf.shopee.vn/file/cdf494d0b01e833facbf88e7dbf3df33_tn);">
                                        </div>
                                        <h4 class="home-product-item__name">Đèn ngủ chiếu ngàn sao mẫu mới 2020 ( dùng
                                            cáp sạc usb )</h4>
                                        <div class="home-product-item-price">
                                            <span class="home-product-item-price-new">41.000d</span>
                                        </div>
                                        <div class="home-product-item-action">
                                            <span class="home-product-item_like home-product-item_like--liked">
                                                <i class="home-product-item_like-icon-emty far fa-heart"></i>
                                                <i class="home-product-item_like-icon-fill fas fa-heart"></i>
                                            </span>
                                            <div class="home-product-item_rating">
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="home-product-item_gold fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <span class="home-product-item_sold">100 đã bán</span>
                                        </div>
                                        <!-- <div class="home-product-item-origin">
                                            <span class="home-product-item_brand">Whoo</span>
                                            <span class="home-product-item-origin-name">Nhật Bản</span>
                                        </div> -->
                                        <div class="home-product-item_favorite">
                                            <i class="fas fa-check"></i>
                                            <span>Yêu thích</span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
</asp:PlaceHolder>
