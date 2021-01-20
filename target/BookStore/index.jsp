<%@ page import="sun.rmi.runtime.Log" %>
<%@ page import="nlu.edu.fit.bookstore.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title> JB Bookstore</title>

    <!-- iconClose -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

    <!-- Slick -->
    <link type="text/css" rel="stylesheet" href="css/slick.css"/>
    <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

    <!-- nouislider -->
    <link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
    <link type="text/css" rel="stylesheet" href="css/quickview.css"/>

    <!-- Modernizr -->
    <script src="js/modernizr.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- SlideShow -->
    <link type="text/css" rel="stylesheet" href="css/slider.css"/>

</head>
<body>
<div>
    <%@include file="parts/header.jsp" %>

    <!-- SECTION -->
    <!-- SlideShow -->
    <!-- SECTION -->

    <div id="left-menu" style="float: left;">
        <div class="vertical-menu">
            <a href="#" class="active"><i class="fa fa-bars"></i>&nbsp; Thể loại</a>
            <a href="literature.jsp">Văn học</a>
            <a href="sachThieuNhi.jsp">Sách thiếu nhi</a>
            <a href="kinhte.jsp">Sách kinh tế</a>
            <a href="sachNgoaiNgu.jsp">Sách ngoại ngữ</a>
            <a href="tamly_kynangsong.jsp">Tâm lý - Kỹ năng sống </a>
            <a href="giaoKhoa.jsp">Giáo khoa - Tham khảo</a>
            <a href="tieuSu.jsp">Tiểu sử - Hồi kí</a>
        </div>
    </div>
    <div class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!-- Slider -->
                <div class="homebanner">
                    <div id="sync1" class="owl-carousel owl-theme" style="opacity: 1; display: block;">
                        <div class="owl-wrapper-outer">
                            <div class="owl-wrapper"
                                 style="width: 12640px; left: 0; display: block; transition: all 800ms ease 0s; transform: translate3d(0px, 0px, 0px);">
                                <div class="owl-item" style="width: 790px;">
                                    <div class="item">
                                        <a href="https://www.thegioididong.com/khuyen-mai-tet">
                                            <img style="cursor:pointer" src="./img/sale/slide1.jpg" alt="Big"
                                                 width="800" height="300">
                                        </a>
                                    </div>
                                </div>
                                <div class="owl-item" style="width: 790px;">
                                    <div class="item">
                                        <a href="https://www.thegioididong.com/khuyen-mai-tet">
                                            <img style="cursor:pointer" src="./img/sale/slide2.jpg"
                                                 alt="Samsung Tet" width="800" height="300"></a></div>
                                </div>
                                <div class="owl-item" style="width: 790px;">
                                    <div class="item">
                                        <a href="https://www.thegioididong.com/khuyen-mai-tet">
                                            <img style="cursor:pointer" src="./img/sale/slide3.jpg"
                                                 alt="Big OPPO" width="800" height="300"></a></div>
                                </div>
                                <div class="owl-item" style="width: 790px;">
                                    <div class="item">
                                        <a href="https://www.thegioididong.com/khuyen-mai-tet">
                                            <img style="cursor:pointer" src="./img/sale/slide4.jpg" alt="A51"
                                                 width="800" height="300"></a></div>
                                </div>
                                <div class="owl-item" style="width: 790px;">
                                    <div class="item">
                                        <a href="https://www.thegioididong.com/khuyen-mai-tet">
                                            <img style="cursor:pointer" src="./img/sale/quangcao2.jpg"
                                                 alt="iphone" width="800" height="300"></a></div>
                                </div>
                                <div class="owl-item" style="width: 790px;">
                                    <div class="item">
                                        <a href="https://www.thegioididong.com/khuyen-mai-tet">
                                            <img style="cursor:pointer" src="./img/sale/mgg.jpg"
                                                 alt="dong ho thoi trang" width="800" height="300"></a></div>
                                </div>
                                <div class="owl-item" style="width: 790px;">
                                    <div class="item">
                                        <a href="https://www.thegioididong.com/khuyen-mai-tet">
                                            <img style="cursor:pointer" src="./img/sale/mgg1.jpg"
                                                 alt="Sắm Apple Watch" width="800" height="300"></a></div>
                                </div>
                                <div class="owl-item" style="width: 790px;">
                                    <div class="item">
                                        <a href="https://www.thegioididong.com/khuyen-mai-tet">
                                            <img style="cursor:pointer" src="./img/sale/mgg2.jpg" alt="phu kien"
                                                 width="800" height="300"></a></div>
                                </div>
                            </div>
                        </div>


                        <div class="owl-controls clickable">
                            <div class="owl-buttons">
                                <div class="owl-prev">‹</div>
                                <div class="owl-next">›</div>
                            </div>
                        </div>
                    </div>
                    <div id="sync2" class="owl-carousel owl-theme" style="opacity: 1; display: block;">
                        <div class="owl-wrapper-outer">
                            <div class="owl-wrapper"
                                 style="width: 2528px; left: 0; display: block; transition: all 200ms ease 0s; transform: translate3d(0px, 0px, 0px);">
                                <div class="owl-item synced" style="width: 158px;">
                                    <div class="item">
                                        <h3>Crazy Sale 50%<br>Cho sách ngoại văn</h3>
                                        <i class="arrowbar"></i>
                                    </div>
                                </div>
                                <div class="owl-item" style="width: 158px;">
                                    <div class="item">
                                        <i class="arrowbarleft"></i>
                                        <h3>Đại tiệc 11.11<br>Sách hay MC.Books</h3>
                                        <i class="arrowbar"></i>
                                    </div>
                                </div>
                                <div class="owl-item" style="width: 158px;">
                                    <div class="item">
                                        <i class="arrowbarleft"></i>
                                        <h3>New books<br>Đồng giảm 30%</h3>
                                        <i class="arrowbar"></i>
                                    </div>
                                </div>
                                <div class="owl-item" style="width: 158px;">
                                    <div class="item">
                                        <i class="arrowbarleft"></i>
                                        <h3>Deal lớn - Giá sốc<br>Càng mua càng giảm</h3>
                                        <i class="arrowbar"></i>
                                    </div>
                                </div>
                                <div class="owl-item" style="width: 158px;">
                                    <div class="item">
                                        <i class="arrowbarleft"></i>
                                        <h3>Quốc tế<br>Ngày hội đọc sách</h3>
                                        <i class="arrowbar"></i>
                                    </div>
                                </div>
                                <div class="owl-item" style="width: 158px;">
                                    <div class="item">
                                        <i class="arrowbarleft"></i>
                                        <h3>Vinh danh ngày Nhà giáo<br>20-11</h3>
                                        <i class="arrowbar"></i>
                                    </div>
                                </div>
                                <div class="owl-item" style="width: 158px;">
                                    <div class="item">
                                        <i class="arrowbarleft"></i>
                                        <h3>Khách hàng mới<br>Giảm 10% </h3>
                                        <i class="arrowbar"></i>
                                    </div>
                                </div>
                                <div class="owl-item" style="width: 158px;">
                                    <div class="item">
                                        <i class="arrowbarleft"></i>
                                        <h3>Giảm 50K khi nhập email<br>Chỉ cho đơn đầu tiên</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ./Slider -->
            </div>
        </div>
    </div>
</div>
<!-- /SECTION -->

<!-- /VERTICAL MENU  -->

<!-- SECTION -->
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">

            <!-- section title -->
            <div class="col-md-12">
                <div class="section-title">

                    <h3 class="title" style="float: left;">Sản phẩm mới</h3>
                    <div id="slick-nav-1" class="products-slick-nav"></div>
                </div>
            </div>
            <!-- /section title -->

            <!-- Products tab & slick -->
            <div class="col-md-12">
                <div class="row">
                    <div class="products-tabs ">
                        <!-- tab -->
                        <div id="tab1" class="tab-pane active">
                            <div class="products-slick" data-nav="#slick-nav-1">
                                <!-- product -->
                                <div class="product">
                                    <div class="product-img">
                                        <a href="product.jsp"><img
                                                src="./img/index/Moi/10-huyen-thoai-viking-hay-nhat-moi-thoi-dai.jpg"
                                                alt="10 huyền thoại Viking hay nhất mọi thời đại"></a>
                                        <div class="product-label">
                                            <span class="sale">-30%</span>
                                            <span class="new">MỚI</span>
                                        </div>
                                    </div>
                                    <div class="product-body">
                                        <p class="product-category">Sách</p>
                                        <h3 class="product-name"><a href="#">huyền thoại viking</a></h3>
                                        <h4 class="product-price">70,000₫
                                            <del
                                                    class="product-old-price">100,000₫
                                            </del>
                                        </h4>
                                        <div class="product-rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <div class="product-btns">
                                            <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span
                                                    class="tooltipp">yêu thích</span></button>
                                            <button class="add-to-compare"><i class="fa fa-exchange"></i><span
                                                    class="tooltipp">đối chiếu</span></button>
                                            <button class="quick-view"><a href="javascript:void(0);"
                                                                          class="quickview" data-handle="quickview"
                                                                          style="color: black;"><i
                                                    class="fa fa-eye"></a></i><span
                                                    class="tooltipp">xem nhanh</span></button>
                                        </div>
                                    </div>
                                    <div class="add-to-cart">
                                        <a href="cart.jsp">
                                            <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> thêm vào
                                                giỏ
                                            </button>
                                        </a>
                                    </div>
                                </div>
                                <!-- /product -->

                                <!-- product -->
                                <div class="product">
                                    <div class="product-img">
                                        <a href="product.jsp"><img
                                                src="./img/index/Moi/100-mau-chuyen-co-dong-tay-nguyen-lan.jpg"
                                                alt="100 mẫu chuyện cổ đông tây"></a>
                                        <div class="product-label">
                                            <span class="new">MỚI</span>
                                        </div>
                                    </div>
                                    <div class="product-body">
                                        <p class="product-category">Truyện</p>
                                        <h3 class="product-name"><a href="#">truyện cổ đông tây</a></h3>
                                        <h4 class="product-price">65,000₫ </h4>
                                        <div class="product-rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                        <div class="product-btns">
                                            <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span
                                                    class="tooltipp">yêu thích</span></button>
                                            <button class="add-to-compare"><i class="fa fa-exchange"></i><span
                                                    class="tooltipp">đối chiếu</span></button>
                                            <button class="quick-view"><a href="javascript:void(0);"
                                                                          class="quickview" data-handle="quickview"
                                                                          style="color: black;"><i
                                                    class="fa fa-eye"></a></i><span
                                                    class="tooltipp">xem nhanh</span></button>
                                        </div>
                                    </div>
                                    <div class="add-to-cart">
                                        <a href="cart.jsp">
                                            <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> thêm vào
                                                giỏ
                                            </button>
                                        </a>
                                    </div>
                                </div>
                                <!-- /product -->

                                <!-- product -->
                                <div class="product">
                                    <div class="product-img">
                                        <a href="product.jsp"><img
                                                src="./img/index/Moi/108-truyen-ngu-ngon-hay-nhat.jpg"
                                                alt="108 truyện ngụ ngôn hay nhất"></a>
                                        <div class="product-label">
                                            <span class="sale">-50%</span>
                                            <span class="new">MỚI</span>
                                        </div>
                                    </div>
                                    <div class="product-body">
                                        <p class="product-category">Truyện</p>
                                        <h3 class="product-name">108 truyện ngụ ngôn</h3>
                                        <h4 class="product-price">55,000₫
                                            <del
                                                    class="product-old-price">110,000₫
                                            </del>
                                        </h4>
                                        <div class="product-rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                        <div class="product-btns">
                                            <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span
                                                    class="tooltipp">yêu thích</span></button>
                                            <button class="add-to-compare"><i class="fa fa-exchange"></i><span
                                                    class="tooltipp">đối chiếu</span></button>
                                            <button class="quick-view"><a href="javascript:void(0);"
                                                                          class="quickview" data-handle="quickview"
                                                                          style="color: black;"><i
                                                    class="fa fa-eye"></a></i><span
                                                    class="tooltipp">xem nhanh</span></button>
                                        </div>
                                    </div>
                                    <div class="add-to-cart">
                                        <a href="cart.jsp">
                                            <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> thêm vào
                                                giỏ
                                            </button>
                                        </a>
                                    </div>
                                </div>
                                <!-- /product -->

                                <!-- product -->
                                <div class="product">
                                    <div class="product-img">
                                        <a href="product.jsp"><img
                                                src="./img/index/Moi/365-chuyen-ke-hang-dem-mua-thu.jpg"
                                                alt="365 chuyện kể hằng đêm mùa thu"></a>
                                        <div class="product-label">
                                            <span class="new">MỚI</span>
                                        </div>
                                    </div>
                                    <div class="product-body">
                                        <p class="product-category">Truyện</p>
                                        <h3 class="product-name"><a href="#">Truyện kể mùa thu</a></h3>
                                        <h4 class="product-price">75,000₫ </h4>
                                        <div class="product-rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <div class="product-btns">
                                            <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span
                                                    class="tooltipp">yêu thích</span></button>
                                            <button class="add-to-compare"><i class="fa fa-exchange"></i><span
                                                    class="tooltipp">đối chiếu</span></button>
                                            <button class="quick-view"><a href="javascript:void(0);"
                                                                          class="quickview" data-handle="quickview"
                                                                          style="color: black;"><i
                                                    class="fa fa-eye"></a></i><span
                                                    class="tooltipp">xem nhanh</span></button>
                                        </div>
                                    </div>
                                    <div class="add-to-cart">
                                        <a href="cart.jsp">
                                            <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> thêm vào
                                                giỏ
                                            </button>
                                        </a>
                                    </div>
                                </div>
                                <!-- /product -->

                                <!-- product -->
                                <div class="product">
                                    <div class="product-img">
                                        <a href="product.jsp"><img
                                                src="./img/index/Moi/buratino-va-chiec-chia-khoa-vang.jpg"
                                                alt="Buratino và chiếc chìa khóa vàng"></a>
                                        <div class="product-label">
                                            <span class="new">MỚI</span>
                                        </div>
                                    </div>
                                    <div class="product-body">
                                        <p class="product-category">Truyện</p>
                                        <h3 class="product-name"><a href="product.jsp">Buratino & chìa khóa
                                            vàng</a>
                                        </h3>
                                        <h4 class="product-price">80,000₫</h4>
                                        <div class="product-rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <div class="product-btns">
                                            <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span
                                                    class="tooltipp">yêu thích</span></button>
                                            <button class="add-to-compare"><i class="fa fa-exchange"></i><span
                                                    class="tooltipp">đối chiếu</span></button>
                                            <button class="quick-view"><a href="javascript:void(0);"
                                                                          class="quickview" data-handle="quickview"
                                                                          style="color: black;"><i
                                                    class="fa fa-eye"></a></i><span
                                                    class="tooltipp">xem nhanh</span></button>
                                        </div>
                                    </div>
                                    <div class="add-to-cart">
                                        <a href="cart.jsp">
                                            <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> thêm vào
                                                giỏ
                                            </button>
                                        </a>
                                    </div>
                                </div>
                                <!-- /product -->

                            </div>
                        </div>
                        <!-- /tab -->
                    </div>
                </div>
            </div>
            <!-- Products tab & slick -->
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /SECTION -->

<!-- SECTION -->
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">

            <!-- section title -->
            <div class="col-md-12">
                <div class="section-title">
                    <h3 class="title" style="float: left;">Sản phẩm bán chạy</h3>
                    <div id="slick-nav-2" class="products-slick-nav"></div>
                </div>
            </div>
            <!-- /section title -->

            <!-- Products tab & slick -->
            <div class="col-md-12">
                <div class="row">
                    <div class="products-tabs">
                        <!-- tab -->
                        <div id="tab2" class="tab-pane fade in active">
                            <div class="products-slick" data-nav="#slick-nav-2">
                                <!-- product -->
                                <div class="product">
                                    <div class="product-img">
                                        <img src="./img/index/BanChay/dam-bi-ghet.jpg" alt="Dám bị ghét">
                                        <div class="product-label">
                                            <span class="sale">-30%</span>
                                            <span class="new">NEW</span>
                                        </div>
                                    </div>
                                    <div class="product-body">
                                        <p class="product-category">Sách</p>
                                        <h3 class="product-name"><a href="#">dám bị ghét</a></h3>
                                        <h4 class="product-price">115,000₫
                                            <del
                                                    class="product-old-price">150,000₫
                                            </del>
                                        </h4>
                                        <div class="product-rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <div class="product-btns">
                                            <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span
                                                    class="tooltipp">yêu thích</span></button>
                                            <button class="add-to-compare"><i class="fa fa-exchange"></i><span
                                                    class="tooltipp">đối chiếu</span></button>
                                            <button class="quick-view"><a href="javascript:void(0);"
                                                                          class="quickview" data-handle="quickview"
                                                                          style="color: black;"><i
                                                    class="fa fa-eye"></a></i><span
                                                    class="tooltipp">xem nhanh</span></button>
                                        </div>
                                    </div>
                                    <div class="add-to-cart">
                                        <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> thêm vào
                                            giỏ
                                        </button>
                                    </div>
                                </div>
                                <!-- /product -->

                                <!-- product -->
                                <div class="product">
                                    <div class="product-img">
                                        <img src="./img/index/BanChay/3-Doi anh ve.jpg" alt="Đợi anh về">
                                        <div class="product-label">
                                            <span class="new">NEW</span>
                                        </div>
                                    </div>
                                    <div class="product-body">
                                        <p class="product-category">Văn học</p>
                                        <h3 class="product-name"><a href="#">đợi anh về</a></h3>
                                        <h4 class="product-price">62,000₫</h4>
                                        <div class="product-rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                        <div class="product-btns">
                                            <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span
                                                    class="tooltipp">yêu thích</span></button>
                                            <button class="add-to-compare"><i class="fa fa-exchange"></i><span
                                                    class="tooltipp">đối chiếu</span></button>
                                            <button class="quick-view"><a href="javascript:void(0);"
                                                                          class="quickview" data-handle="quickview"
                                                                          style="color: black;"><i
                                                    class="fa fa-eye"></a></i><span
                                                    class="tooltipp">xem nhanh</span></button>
                                        </div>
                                    </div>
                                    <div class="add-to-cart">
                                        <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> thêm vào
                                            giỏ
                                        </button>
                                    </div>
                                </div>
                                <!-- /product -->

                                <!-- product -->
                                <div class="product">
                                    <div class="product-img">
                                        <img src="./img/index/BanChay/mu-phu-thuy.jpg" alt="Mụ phù thủy">
                                        <div class="product-label">
                                            <span class="sale">-30%</span>
                                        </div>
                                    </div>
                                    <div class="product-body">
                                        <p class="product-category">Truyện</p>
                                        <h3 class="product-name"><a href="#">mụ phù thủy</a></h3>
                                        <h4 class="product-price">90,000₫
                                            <del
                                                    class="product-old-price">129,000₫
                                            </del>
                                        </h4>
                                        <div class="product-rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                        <div class="product-btns">
                                            <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span
                                                    class="tooltipp">yêu thích</span></button>
                                            <button class="add-to-compare"><i class="fa fa-exchange"></i><span
                                                    class="tooltipp">đối chiếu</span></button>
                                            <button class="quick-view"><a href="javascript:void(0);"
                                                                          class="quickview" data-handle="quickview"
                                                                          style="color: black;"><i
                                                    class="fa fa-eye"></a></i><span
                                                    class="tooltipp">xem nhanh</span></button>
                                        </div>
                                    </div>
                                    <div class="add-to-cart">
                                        <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> thêm vào
                                            giỏ
                                        </button>
                                    </div>
                                </div>
                                <!-- /product -->

                                <!-- product -->
                                <div class="product">
                                    <div class="product-img">
                                        <img src="./img/index/BanChay/blackmoore.jpg" alt="Blackmoore">
                                    </div>
                                    <div class="product-body">
                                        <p class="product-category">Sách</p>
                                        <h3 class="product-name"><a href="#">Blackmoore</a></h3>
                                        <h4 class="product-price">78,000₫ </h4>
                                        <div class="product-rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <div class="product-btns">
                                            <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span
                                                    class="tooltipp">yêu thích</span></button>
                                            <button class="add-to-compare"><i class="fa fa-exchange"></i><span
                                                    class="tooltipp">đối chiếu</span></button>
                                            <button class="quick-view"><a href="javascript:void(0);"
                                                                          class="quickview" data-handle="quickview"
                                                                          style="color: black;"><i
                                                    class="fa fa-eye"></a></i><span
                                                    class="tooltipp">xem nhanh</span></button>
                                        </div>
                                    </div>
                                    <div class="add-to-cart">
                                        <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> thêm vào
                                            giỏ
                                        </button>
                                    </div>
                                </div>
                                <!-- /product -->

                                <!-- product -->
                                <div class="product">
                                    <div class="product-img">
                                        <img src="./img/index/BanChay/pr-la-song.jpg" alt="Pr là sống">
                                    </div>
                                    <div class="product-body">
                                        <p class="product-category">Sách</p>
                                        <h3 class="product-name"><a href="#">pr là sống</a></h3>
                                        <h4 class="product-price">83,000₫</h4>
                                        <div class="product-rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <div class="product-btns">
                                            <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span
                                                    class="tooltipp">yêu thích</span></button>
                                            <button class="add-to-compare"><i class="fa fa-exchange"></i><span
                                                    class="tooltipp">đối chiếu</span></button>
                                            <button class="quick-view"><a href="javascript:void(0);"
                                                                          class="quickview" data-handle="quickview"
                                                                          style="color: black;"><i
                                                    class="fa fa-eye"></a></i><span
                                                    class="tooltipp">xem nhanh</span></button>
                                        </div>
                                    </div>
                                    <div class="add-to-cart">
                                        <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> thêm vào
                                            giỏ
                                        </button>
                                    </div>
                                </div>
                                <!-- /product -->
                            </div>
                        </div>
                        <!-- /tab -->
                    </div>
                </div>
            </div>
            <!-- /Products tab & slick -->
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /SECTION -->

<!-- SECTION -->
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div id="navigation" style="margin-bottom: 15px;border-top: none;">
            <h3>Văn học</h3>
        </div>
        <div class="row">

            <div class="col-md-4 col-xs-6">
                <img src="./img/index/banner/bannerVanHoc.jpg" alt="" style="width: 100%;">
            </div>

            <div class="col-md-4 col-xs-6">
                <div class="section-title">
                    <h4 class="title">Hàng mới</h4>
                    <div class="section-nav">
                        <div id="slick-nav-3" class="products-slick-nav"></div>
                    </div>
                </div>

                <div class="products-widget-slick" data-nav="#slick-nav-3">
                    <div>
                        <!-- product widget -->
                        <div class="product-widget">
                            <div class="product-img">
                                <img src="./img/index/VanHoc/100cauchuyenchobetrai.jpg"
                                     alt="100 câu chuyện cho bé trai">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Truyện</p>
                                <h3 class="product-name"><a href="#">100 câu chuyện cho bé trai</a></h3>
                                <h4 class="product-price">50,000₫
                                    <del class="product-old-price">90,000₫</del>
                                </h4>
                            </div>
                        </div>
                        <!-- /product widget -->

                        <!-- product widget -->
                        <div class="product-widget">
                            <div class="product-img">
                                <img src="./img/index/VanHoc/dieukydieu.jpg" alt="Điều kỳ diệu">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Tiểu thuyết</p>
                                <h3 class="product-name"><a href="#">Điều kỳ diệu</a></h3>
                                <h4 class="product-price">120,000₫ </h4>
                            </div>
                        </div>
                        <!-- /product widget -->

                        <!-- product widget -->
                        <div class="product-widget">
                            <div class="product-img">
                                <img src="./img/index/VanHoc/dunghenngaymai.jpg" alt="Đừng hẹn ngày mai">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Tiểu thuyết</p>
                                <h3 class="product-name"><a href="#">Đừng hẹn ngày mai</a></h3>
                                <h4 class="product-price">80,000₫
                                    <del class="product-old-price">90,000₫</del>
                                </h4>
                            </div>
                        </div>
                        <!-- product widget -->

                        <!-- product widget -->
                        <div class="product-widget">
                            <div class="product-img">
                                <img src="./img/index/VanHoc/harrypotter.jpg" alt="Harry Potter">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Tiểu thuyết</p>
                                <h3 class="product-name"><a href="#">Harry Potter và Hòn đá lửa</a></h3>
                                <h4 class="product-price">150,000₫
                                    <del class="product-old-price">200,000₫</del>
                                </h4>
                            </div>
                        </div>
                        <!-- product widget -->
                    </div>

                    <div>
                        <!-- product widget -->
                        <div class="product-widget">
                            <div class="product-img">
                                <img src="./img/index/VanHoc/neubiettramnamlahuuhan.jpg"
                                     alt="Nếu biết trăm năm là hữu hạn">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Ngôn tình</p>
                                <h3 class="product-name"><a href="#">Nếu biết trăm năm là hữu hạn</a></h3>
                                <h4 class="product-price">80,000₫
                                    <del class="product-old-price">90,000₫</del>
                                </h4>
                            </div>
                        </div>
                        <!-- /product widget -->

                        <!-- product widget -->
                        <div class="product-widget">
                            <div class="product-img">
                                <img src="./img/index/VanHoc/nhungtamlongcaoca.jpg" alt="Những tấm lòng cao cả">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Văn học</p>
                                <h3 class="product-name"><a href="#">Những tấm lòng cao cả</a></h3>
                                <h4 class="product-price">120,000₫
                                    <del class="product-old-price">150,000₫</del>
                                </h4>
                            </div>
                        </div>
                        <!-- /product widget -->

                        <!-- product widget -->
                        <div class="product-widget">
                            <div class="product-img">
                                <img src="./img/index/VanHoc/ongtramtuoitreoquacuasovabienmat.jpg"
                                     alt="Ông trăm tuổi trèo qua cửa sổ và biến mất">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Ngụ ngôn</p>
                                <h3 class="product-name"><a href="#">Ông trăm tuổi trèo cửa sổ & biến mất</a></h3>
                                <h4 class="product-price">100,000₫ </h4>
                            </div>
                        </div>
                        <!-- product widget -->

                        <!-- product widget -->
                        <div class="product-widget">
                            <div class="product-img">
                                <img src="./img/index/VanHoc/tiemsachcu.jpg" alt="Tiệm sách cũ">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Đam mỹ</p>
                                <h3 class="product-name"><a href="#">Tiệm sách cũ</a></h3>
                                <h4 class="product-price">80,000₫
                                    <del class="product-old-price">100,000₫</del>
                                </h4>
                            </div>
                        </div>
                        <!-- product widget -->

                    </div>
                </div>
            </div>

            <div class="col-md-4 col-xs-6">
                <div class="section-title">
                    <h4 class="title">Bán chạy</h4>
                    <div class="section-nav">
                        <div id="slick-nav-4" class="products-slick-nav"></div>
                    </div>
                </div>

                <div class="products-widget-slick" data-nav="#slick-nav-4">
                    <div>
                        <!-- product widget -->
                        <div class="product-widget">
                            <div class="product-img">
                                <img src="./img/index/VanHoc/tiemsachcu.jpg" alt="Tiệm sách cũ">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Đam mỹ</p>
                                <h3 class="product-name"><a href="#">Tiệm sách cũ</a></h3>
                                <h4 class="product-price">80,000₫
                                    <del class="product-old-price">100,000₫</del>
                                </h4>
                            </div>
                        </div>
                        <!-- /product widget -->

                        <!-- product widget -->
                        <div class="product-widget">
                            <div class="product-img">
                                <img src="./img/index/VanHoc/ongtramtuoitreoquacuasovabienmat.jpg"
                                     alt="Ông trăm tuổi trèo qua cửa sổ và biến mất">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Ngụ ngôn</p>
                                <h3 class="product-name"><a href="#">Ông trăm tuổi trèo cửa sổ & biến mất</a></h3>
                                <h4 class="product-price">100,000₫ </h4>
                            </div>
                        </div>
                        <!-- /product widget -->

                        <!-- product widget -->
                        <div class="product-widget">
                            <div class="product-img">
                                <img src="./img/index/VanHoc/nhungtamlongcaoca.jpg" alt="Những tấm lòng cao cả">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Văn học</p>
                                <h3 class="product-name"><a href="#">Những tấm lòng cao cả</a></h3>
                                <h4 class="product-price">120,000₫
                                    <del class="product-old-price">150,000₫</del>
                                </h4>
                            </div>
                        </div>
                        <!-- product widget -->

                        <!-- product widget -->
                        <div class="product-widget">
                            <div class="product-img">
                                <img src="./img/index/VanHoc/neubiettramnamlahuuhan.jpg"
                                     alt="Nếu biết trăm năm là hữu hạn">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Ngôn tình</p>
                                <h3 class="product-name"><a href="#">Nếu biết trăm năm là hữu hạn</a></h3>
                                <h4 class="product-price">80,000₫
                                    <del class="product-old-price">90,000₫</del>
                                </h4>
                            </div>
                        </div>
                        <!-- product widget -->
                    </div>

                    <div>
                        <!-- product widget -->
                        <div class="product-widget">
                            <div class="product-img">
                                <img src="./img/index/VanHoc/harrypotter.jpg" alt="Harry Potter">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Tiểu thuyết</p>
                                <h3 class="product-name"><a href="#">Harry Potter và Hòn đá lửa</a></h3>
                                <h4 class="product-price">150,000₫
                                    <del class="product-old-price">200,000₫</del>
                                </h4>
                            </div>
                        </div>
                        <!-- /product widget -->

                        <!-- product widget -->
                        <div class="product-widget">
                            <div class="product-img">
                                <img src="./img/index/VanHoc/dunghenngaymai.jpg" alt="Đừng hẹn ngày mai">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Tiểu thuyết</p>
                                <h3 class="product-name"><a href="#">Đừng hẹn ngày mai</a></h3>
                                <h4 class="product-price">80,000₫
                                    <del class="product-old-price">90,000₫</del>
                                </h4>
                            </div>
                        </div>
                        <!-- /product widget -->

                        <!-- product widget -->
                        <div class="product-widget">
                            <div class="product-img">
                                <img src="./img/index/VanHoc/dieukydieu.jpg" alt="Điều kỳ diệu">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Tiểu thuyết</p>
                                <h3 class="product-name"><a href="#">Điều kỳ diệu</a></h3>
                                <h4 class="product-price">120,000₫ </h4>
                            </div>
                        </div>
                        <!-- product widget -->

                        <!-- product widget -->
                        <div class="product-widget">
                            <div class="product-img">
                                <img src="./img/index/VanHoc/100cauchuyenchobetrai.jpg"
                                     alt="100 câu chuyện cho bé trai">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Truyện</p>
                                <h3 class="product-name"><a href="#">100 câu chuyện cho bé trai</a></h3>
                                <h4 class="product-price">50,000₫
                                    <del class="product-old-price">90,000₫</del>
                                </h4>
                            </div>
                        </div>
                        <!-- product widget -->
                    </div>
                </div>
            </div>

            <div class="clearfix visible-sm visible-xs"></div>
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /SECTION -->

<!-- SECTION -->
<div class="section">
    <!-- container -->
    <div class="container">
        <div id="navigation" style="margin-bottom: 15px;border-top: none;">
            <h3>Kinh tế</h3>
        </div>
        <!-- row -->
        <div class="row">
            <div class="col-md-4 col-xs-6">
                <div class="section-title">
                    <h4 class="title">Hàng mới</h4>
                    <div class="section-nav">
                        <div id="slick-nav-5" class="products-slick-nav"></div>
                    </div>
                </div>

                <div class="products-widget-slick" data-nav="#slick-nav-5">
                    <div>
                        <!-- product widget -->
                        <div class="product-widget">
                            <div class="product-img">
                                <img src="./img/index/KinhTe/cuoccachmangchaybo.jpg" alt="Cuộc cách mạng chạy bộ">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Sách</p>
                                <h3 class="product-name"><a href="#">Cuộc cách mạng chạy bộ</a></h3>
                                <h4 class="product-price">80,000₫
                                    <del class="product-old-price">90,000₫</del>
                                </h4>
                            </div>
                        </div>
                        <!-- /product widget -->

                        <!-- product widget -->
                        <div class="product-widget">
                            <div class="product-img">
                                <img src="./img/index/KinhTe/moilanvapngalamotlantruongthanh.jpg"
                                     alt="Mỗi lần vấp ngã một lần trưởng thành">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Sách</p>
                                <h3 class="product-name"><a href="#">Vấp ngã là trưởng thành</a></h3>
                                <h4 class="product-price">50,000₫
                                    <del class="product-old-price">80,000₫</del>
                                </h4>
                            </div>
                        </div>
                        <!-- /product widget -->

                        <!-- product widget -->
                        <div class="product-widget">
                            <div class="product-img">
                                <img src="./img/index/KinhTe/suc_manh_cua_tinh_tam_606-2_1.jpg"
                                     alt="Sức mạnh của tịnh tâm">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Sách</p>
                                <h3 class="product-name"><a href="#">Sức mạnh của tịnh tâm</a></h3>
                                <h4 class="product-price">100,000₫ </h4>
                            </div>
                        </div>
                        <!-- product widget -->
                    </div>

                    <div>
                        <!-- product widget -->
                        <div class="product-widget">
                            <div class="product-img">
                                <img src="./img/index/KinhTe/suc_manh_cua_tinh_tam_606-2_1.jpg"
                                     alt="Sức mạnh của tịnh tâm">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Sách</p>
                                <h3 class="product-name"><a href="#">Sức mạnh của tịnh tâm</a></h3>
                                <h4 class="product-price">100,000₫ </h4>
                            </div>
                        </div>
                        <!-- product widget -->

                        <!-- product widget -->
                        <div class="product-widget">
                            <div class="product-img">
                                <img src="./img/index/KinhTe/cuoccachmangchaybo.jpg" alt="Cuộc cách mạng chạy bộ">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Sách</p>
                                <h3 class="product-name"><a href="#">Cuộc cách mạng chạy bộ</a></h3>
                                <h4 class="product-price">80,000₫
                                    <del class="product-old-price">90,000₫</del>
                                </h4>
                            </div>
                        </div>
                        <!-- /product widget -->

                        <!-- product widget -->
                        <div class="product-widget">
                            <div class="product-img">
                                <img src="./img/index/KinhTe/nguoi-thap-sao-troi.jpg" alt="Người thắp sao trời">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Sách</p>
                                <h3 class="product-name"><a href="#">Người thắp sao trời</a></h3>
                                <h4 class="product-price">75,000₫</h4>
                            </div>
                        </div>
                        <!-- /product widget -->

                    </div>
                </div>
            </div>

            <div class="col-md-4 col-xs-6">
                <div class="section-title">
                    <h4 class="title">Bán chạy</h4>
                    <div class="section-nav">
                        <div id="slick-nav-6" class="products-slick-nav"></div>
                    </div>
                </div>

                <div class="products-widget-slick" data-nav="#slick-nav-6">
                    <div>
                        <!-- product widget -->
                        <div class="product-widget">
                            <div class="product-img">
                                <img src="./img/index/KinhTe/nguoi-thap-sao-troi.jpg" alt="Người thắp sao trời">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Sách</p>
                                <h3 class="product-name"><a href="#">Người thắp sao trời</a></h3>
                                <h4 class="product-price">75,000₫</h4>
                            </div>
                        </div>
                        <!-- /product widget -->

                        <!-- product widget -->
                        <div class="product-widget">
                            <div class="product-img">
                                <img src="./img/index/KinhTe/suc_manh_cua_tinh_tam_606-2_1.jpg"
                                     alt="Sức mạnh của tịnh tâm">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Sách</p>
                                <h3 class="product-name"><a href="#">Sức mạnh của tịnh tâm</a></h3>
                                <h4 class="product-price">100,000₫ </h4>
                            </div>
                        </div>
                        <!-- /product widget -->

                        <!-- product widget -->
                        <div class="product-widget">
                            <div class="product-img">
                                <img src="./img/index/KinhTe/cuoccachmangchaybo.jpg" alt="Cuộc cách mạng chạy bộ">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Sách</p>
                                <h3 class="product-name"><a href="#">Cuộc cách mạng chạy bộ</a></h3>
                                <h4 class="product-price">80,000₫
                                    <del class="product-old-price">90,000₫</del>
                                </h4>
                            </div>
                        </div>
                        <!-- product widget -->
                    </div>

                    <div>
                        <!-- product widget -->
                        <div class="product-widget">
                            <div class="product-img">
                                <img src="./img/index/KinhTe/nguoi-thap-sao-troi.jpg" alt="Người thắp sao trời">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Sách</p>
                                <h3 class="product-name"><a href="#">Người thắp sao trời</a></h3>
                                <h4 class="product-price">75,000₫</h4>
                            </div>
                        </div>
                        <!-- /product widget -->

                        <!-- product widget -->
                        <div class="product-widget">
                            <div class="product-img">
                                <img src="./img/index/KinhTe/moilanvapngalamotlantruongthanh.jpg"
                                     alt="Mỗi lần vấp ngã một lần trưởng thành">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Sách</p>
                                <h3 class="product-name"><a href="#">Vấp ngã là trưởng thành</a></h3>
                                <h4 class="product-price">50,000₫
                                    <del class="product-old-price">80,000₫</del>
                                </h4>
                            </div>
                        </div>
                        <!-- /product widget -->

                        <!-- product widget -->
                        <div class="product-widget">
                            <div class="product-img">
                                <img src="./img/index/KinhTe/cuoccachmangchaybo.jpg" alt="Cuộc cách mạng chạy bộ">
                            </div>
                            <div class="product-body">
                                <p class="product-category">Sách</p>
                                <h3 class="product-name"><a href="#">Cuộc cách mạng chạy bộ</a></h3>
                                <h4 class="product-price">80,000₫
                                    <del class="product-old-price">90,000₫</del>
                                </h4>
                            </div>
                        </div>
                        <!-- product widget -->
                    </div>
                </div>
            </div>

            <div class="clearfix visible-sm visible-xs"></div>

            <div class="col-md-4 col-xs-6">
                <img src="./img/index/banner/bannerKinhTe.jpg" alt="" style="width: 100%;">
            </div>

        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /SECTION -->

<!-- QUICK VIEW  -->
<div id="quick-view-modal" class="wrapper-quickview" style="display: none;">
    <div class="quickviewOverlay">
    </div>
    <div class="jsQuickview">
        <div class="modal-header clearfix" style="width: 100%">
            <a href="product.jsp" class="quickview-title text-left" title="Đừng lựa chọn an nhàn khi còn trẻ">
                <h4 style="text-align: center; ">
                    ĐỪNG LỰA CHỌN AN NHÀN KHI CÒN TRẺ</h4>
            </a>

            <div class="quickview-close iconClose">
                <a href="javascript:void(0);"><i class="glyphicon glyphicon-remove" style="color: tomato;"></i></a>
            </div>
        </div>
        <div class="col-md-5">
            <div class="quickview-image image-zoom">
                <img class="p-product-image-feature" src="./img/quickview/large1.jpg"
                     alt="Đừng lựa chọn an nhàn khi còn trẻ">
            </div>
            <div id="quickview-sliderproduct">
                <div class="quickview-slider">
                    <ul class="owl-carousel owl-theme" style="display: block; opacity: 1;">
                        <div class="owl-wrapper-outer">
                            <div class="owl-wrapper" style="width: 600px; left: 0px; display: block;">
                                <div class="owl-item" style="width: 100px;">
                                    <li class="product-thumb active"><a href="javascript:void(0);"
                                                                        data-image="./img/quickview/large1.jpg">
                                        <img src="./img/quickview/small1.jpg"
                                             style="width: 80px;height: 100px;"></a>
                                    </li>
                                </div>
                                <div class="owl-item" style="width: 100px;">
                                    <li class="product-thumb"><a href="javascript:void(0);"
                                                                 data-image="./img/quickview/large2.jpg">
                                        <img src="./img/quickview/small2.jpg"
                                             style="width: 80px;height: 100px;"></a>
                                    </li>
                                </div>
                                <div class="owl-item" style="width: 100px;">
                                    <li class="product-thumb"><a href="javascript:void(0);"
                                                                 data-image="./img/quickview/large3.jpg">
                                        <img src="./img/quickview/small3.jpg"
                                             style="width: 80px;height: 100px;"></a>
                                    </li>
                                </div>
                            </div>
                        </div>
                        <div class="owl-controls clickable" style="display: none;">
                            <div class="owl-pagination">
                                <div class="owl-page active">
                                    <span class=""></span>
                                </div>
                            </div>
                            <div class="owl-buttons">
                                <div class="owl-prev">
                                    owl-prev
                                </div>
                                <div class="owl-next">
                                    owl-next
                                </div>
                            </div>
                        </div>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-md-7">
            <strong>Mô tả:</strong>
            <div>
                Trong độ xuân xanh phơi phới ngày ấy, bạn không dám mạo hiểm, không dám nỗ lực
                để kiếm học bổng, không chịu tìm tòi những thử thách trong công việc, không phấn
                đấu hướng đến ước mơ của mình. Bạn mơ mộng rằng làm việc xong sẽ vào làm ở một
                công ty nổi tiếng, làm một thời gian sẽ thăng quan tiến chức. Mơ mộng ....<a href="product.jsp"
                                                                                             style="color: tomato;">xem
                thêm</a>
            </div>
            </br>
            <div><strong>Tác giả:</strong> Cảnh Thiên</div>
            </br>
            <div><strong>Thể loại:</strong> Văn học</div>
            </br>
            <div class="add-to-cart">
                <div class="qty-label">
                    <strong>Số lượng: </strong></br>
                    <div class="input-number" style="float: left;">
                        <input type="number" value="1">
                        <span class="qty-up">+</span>
                        <span class="qty-down">-</span>
                    </div>
                </div>
                </br>
                </br>
                </br>
                <div class="product-details" style="text-align: center;">
                    <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /QUICK VIEW  -->

<!-- NEWSLETTER -->

<%@include file="parts/footer.jsp" %>
</body>
</html>