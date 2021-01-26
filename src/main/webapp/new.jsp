<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title> JB Bookstore</title>

        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

        <!-- Slick -->
        <link type="text/css" rel="stylesheet" href="css/slick.css" />
        <link type="text/css" rel="stylesheet" href="css/slick-theme.css" />

        <!-- nouislider -->
        <link type="text/css" rel="stylesheet" href="css/nouislider.min.css" />

        <!-- Font Awesome Icon -->
        <link rel="stylesheet" href="css/font-awesome.min.css">

        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="css/style.css" />

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

        <!-- SlideShow -->
        <link type="text/css" rel="stylesheet" href="css/slider.css" />
        <link type="text/css" rel="stylesheet" href="css/product.css" />
        <link type="text/css" rel="stylesheet" href="css/details.css" />

    </head>

    <body>

        <!-- form sign up -->
        <%@include file="parts/header.jsp" %>
            <!-- /NAVIGATION -->

            <!-- BREADCRUMB -->
            <div id="breadcrumb" class="section">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="breadcrumb-header">Chi tiết sản phẩm</h3>
                            <ul class="breadcrumb-tree">
                                <li><a href="index.jsp">Trang chủ</a></li>
                                <li class="active">Chi tiết sản phẩm</li>
                            </ul>
                        </div>
                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->
            </div>
            <!-- /BREADCRUMB -->

            <!-- SECTION -->
            <div class="section">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        <!-- Product main img -->
                        <div class="col-md-5 col-md-push-2">
                            <div id="product-main-img">
                                <div class="product-preview">
                                    <img src="img/cotichthanthoai/10-huyen-thoai-hy-lap-hay-nhat-moi-thoi-dai.jpg" alt="">
                                </div>

                                <div class="product-preview">
                                    <img src="./img/cotichthanthoai/10-huyen-thoai-viking-hay-nhat-moi-thoi-dai.jpg" alt="">
                                </div>

                                <div class="product-preview">
                                    <img src="./img/cotichthanthoai/buratino-va-chiec-chia-khoa-vang.jpg" alt="">
                                </div>

                                <div class="product-preview">
                                    <img src="./img/cotichthanthoai/108-truyen-ngu-ngon-hay-nhat.jpg" alt="">
                                </div>
                            </div>
                        </div>
                        <!-- /Product main img -->

                        <!-- Product thumb imgs -->
                        <div class="col-md-2  col-md-pull-5">
                            <div id="product-imgs">
                                <div class="product-preview-slide">
                                    <img src="img/cotichthanthoai/10-huyen-thoai-hy-lap-hay-nhat-moi-thoi-dai.jpg" alt="">
                                </div>

                                <div class="product-preview-slide">
                                    <img src="./img/cotichthanthoai/10-huyen-thoai-viking-hay-nhat-moi-thoi-dai.jpg" alt="">
                                </div>

                                <div class="product-preview-slide">
                                    <img src="./img/cotichthanthoai/buratino-va-chiec-chia-khoa-vang.jpg" alt="">
                                </div>

                                <div class="product-preview-slide">
                                    <img src="./img/cotichthanthoai/108-truyen-ngu-ngon-hay-nhat.jpg" alt="">
                                </div>
                            </div>
                        </div>
                        <!-- /Product thumb imgs -->

                        <!-- Product details -->
                        <div class="col-md-5">
                            <div class="product-details">
                                <h2 class="product-name">mười huyền thoại hy lạp hay nhất mọi thời đại</h2>
                                <div>
                                    <div class="product-rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                    <a class="review-link" href="#">10 Đánh giá | Thêm đánh giá</a>
                                </div>
                                <div>
                                    <h3 class="product-price">70,000₫ <del class="product-old-price">100,000₫</del></h3>
                                    <span class="product-available">Còn hàng</span>
                                </div>
                                <p>Tác giả : Terry Deary</p>
                                <p> Thể Loại : Cổ Tích - Thần Thoại</p>
                                <p>Lượt xem : 43867</p>

                                <div class="add-to-cart">
                                    <div class="qty-label">
                                        Số lượng:
                                        <div class="input-number">
                                            <input type="number" value="1">
                                            <span class="qty-up">+</span>
                                            <span class="qty-down">-</span>
                                        </div>
                                    </div>
                                    <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ
										hàng</button>
                                </div>

                                <ul class="product-btns">
                                    <li><a href="#"><i class="fa fa-heart-o"></i> Yêu thích</a></li>
                                    <li><a href="#"><i class="fa fa-exchange"></i> Đối chiếu</a></li>
                                </ul>

                                <ul class="product-links">
                                    <li>Thể loại:</li>
                                    <li><a href="#">Cổ tích thần thoại</a></li>


                                </ul>

                                <ul class="product-links">
                                    <li>Chia sẻ:</li>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-envelope"></i></a></li>
                                </ul>

                            </div>
                        </div>
                        <!-- /Product details -->

                        <!-- Product tab -->
                        <div class="col-md-12">
                            <div id="product-tab">
                                <!-- product tab nav -->
                                <ul class="tab-nav">
                                    <li class="active"><a data-toggle="tab" href="#tab1">Miêu tả</a></li>
                                    <li><a data-toggle="tab" href="#tab2">Chi tiết</a></li>
                                    <li><a data-toggle="tab" href="#tab3">Đánh giá (3)</a></li>
                                </ul>
                                <!-- /product tab nav -->

                                <!-- product tab content -->
                                <div class="tab-content">
                                    <!-- tab1  -->
                                    <div id="tab1" class="tab-pane fade in active">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <p>10 Huyền Thoại Hy Lạp Hay Nhất Mọi Thời Đại được trình bày dưới nhiều hình thức khác nhau. Sau mỗi huyền thoại lại có những dữ liệu kỳ thú liên quan đến chủ đề.</p>
                                                <p>Nội dung hấp dẫn, cách trình bày hài hước, đa dạng kèm tranh minh họa vui nhộn. Sách thích hợp với các bạn đọc từ 10 tuổi trở lên.</p>
                                                <p>Từ thời cổ đại, loài người đã kể chuyện. Họ kể nhiều chuyện cho nhau để giải thích thế giới xung quanh. Những câu chuyện này được ghi nhớ và truyền tụng lại. Có thể những người lang thang đã nghe kể chuyện
                                                    rồi đem câu chuyện đó đi “phát tán” ở các vùng đất lân cận, sau khi đã thêm mắm giặm muối.</p>
                                                <p>Đến một lúc, con người bắt đầu học cách viết và một số người đã viết lại những câu chuyện này để truyền bá cho thế hệ sau.</p>
                                                <p>Có quá nhiều chuyện để nhét cả vào một cuốn sách, vì vậy cuốn sách này chỉ là 10 câu chuyện của người Hy Lạp cổ: 10 câu chuyện hay nhất! Chúng sẽ được kể lại dưới hình thức mới mẻ hơn và sẽ mang dáng dấp
                                                    những câu chuyện hiện đại. Ngoài ra, bạn sẽ được “khuyến mãi” thêm 10 phần viết về những dữ liệu kỳ thú để bạn tha hồ đào bới và học hỏi thêm về người Hy Lạp, những thú vui và những rắc rối của họ.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /tab1  -->
                                    <!-- tab2 -->
                                    <div id="tab2" class="tab-pane fade in">
                                        <div class="row">
                                            <table>
                                                <tbody>
                                                    <tr>
                                                        <td>Công ty phát hành</td>
                                                        <td>NXB Trẻ</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Ngày xuất bản</td>
                                                        <td>08-2013</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Kích thước</td>
                                                        <td>14 x 20 cm</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Loại bìa</td>
                                                        <td>Bìa mềm</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Số trang</td>
                                                        <td>200</td>
                                                    </tr>
                                                    <tr>
                                                        <td>SKU</td>
                                                        <td>2519165688780</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Nhà xuất bản</td>
                                                        <td>NXB Trẻ</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <!-- tab3  -->
                                    <div id="tab3" class="tab-pane fade in">
                                        <div class="row">
                                            <!-- Rating -->
                                            <div class="col-md-3">
                                                <div id="rating">
                                                    <div class="rating-avg">
                                                        <span>4.5</span>
                                                        <div class="rating-stars">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-o"></i>
                                                        </div>
                                                    </div>
                                                    <ul class="rating">
                                                        <li>
                                                            <div class="rating-stars">
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                            </div>
                                                            <div class="rating-progress">
                                                                <div style="width: 80%;"></div>
                                                            </div>
                                                            <span class="sum">3</span>
                                                        </li>
                                                        <li>
                                                            <div class="rating-stars">
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star-o"></i>
                                                            </div>
                                                            <div class="rating-progress">
                                                                <div style="width: 60%;"></div>
                                                            </div>
                                                            <span class="sum">2</span>
                                                        </li>
                                                        <li>
                                                            <div class="rating-stars">
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star-o"></i>
                                                                <i class="fa fa-star-o"></i>
                                                            </div>
                                                            <div class="rating-progress">
                                                                <div></div>
                                                            </div>
                                                            <span class="sum">0</span>
                                                        </li>
                                                        <li>
                                                            <div class="rating-stars">
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star-o"></i>
                                                                <i class="fa fa-star-o"></i>
                                                                <i class="fa fa-star-o"></i>
                                                            </div>
                                                            <div class="rating-progress">
                                                                <div></div>
                                                            </div>
                                                            <span class="sum">0</span>
                                                        </li>
                                                        <li>
                                                            <div class="rating-stars">
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star-o"></i>
                                                                <i class="fa fa-star-o"></i>
                                                                <i class="fa fa-star-o"></i>
                                                                <i class="fa fa-star-o"></i>
                                                            </div>
                                                            <div class="rating-progress">
                                                                <div></div>
                                                            </div>
                                                            <span class="sum">0</span>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <!-- /Rating -->

                                            <!-- Reviews -->
                                            <div class="col-md-6">
                                                <div id="reviews">
                                                    <ul class="reviews">
                                                        <li>
                                                            <div class="review-heading">
                                                                <h5 class="name">Quốc</h5>
                                                                <p class="date">12-12-2019, 8:0 PM</p>
                                                                <div class="review-rating">
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star-o empty"></i>
                                                                </div>
                                                            </div>
                                                            <div class="review-body">
                                                                <p>Sách rất hay, thật tuyệt vời!</p>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="review-heading">
                                                                <h5 class="name">Nhung</h5>
                                                                <p class="date">10-09-2020, 7:0 PM</p>
                                                                <div class="review-rating">
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star-o empty"></i>
                                                                </div>
                                                            </div>
                                                            <div class="review-body">
                                                                <p>Cực kì hài lòng</p>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="review-heading">
                                                                <h5 class="name">Anh</h5>
                                                                <p class="date">14-07-2020, 10:0 AM</p>
                                                                <div class="review-rating">
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star-o empty"></i>
                                                                </div>
                                                            </div>
                                                            <div class="review-body">
                                                                <p>Sách hay lắm mọi người ạ!</p>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                    <ul class="reviews-pagination">
                                                        <li class="active">1</li>
                                                        <li><a href="#">2</a></li>
                                                        <li><a href="#">3</a></li>
                                                        <li><a href="#">4</a></li>
                                                        <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <!-- /Reviews -->

                                            <!-- Review Form -->
                                            <div class="col-md-3" style="margin-right: -10px;">
                                                <div id="review-form">
                                                    <form class="review-form">
                                                        <input class="input-product" type="text" placeholder="Họ tên">
                                                        <input class="input-product" type="email" placeholder="Email">
                                                        <textarea class="input-product" placeholder="Nhận xét của bạn"></textarea>
                                                        <div class="input-rating">
                                                            <span>Đánh giá của bạn: </span>
                                                            <div class="stars">
                                                                <input id="star5" name="rating" value="5" type="radio"><label for="star5"></label>
                                                                <input id="star4" name="rating" value="4" type="radio"><label for="star4"></label>
                                                                <input id="star3" name="rating" value="3" type="radio"><label for="star3"></label>
                                                                <input id="star2" name="rating" value="2" type="radio"><label for="star2"></label>
                                                                <input id="star1" name="rating" value="1" type="radio"><label for="star1"></label>
                                                            </div>
                                                        </div>
                                                        <button class="primary-btn">Gửi</button>
                                                    </form>
                                                </div>
                                            </div>
                                            <!-- /Review Form -->
                                        </div>
                                    </div>
                                    <!-- /tab3  -->
                                </div>
                                <!-- /product tab content  -->
                            </div>
                        </div>
                        <!-- /product tab -->
                    </div>
                    <!-- /row -->
                </div>
                <!-- /container -->
            </div>
            <!-- /SECTION -->
            </div>
            </div>


            <!-- NEWSLETTER -->
            <%@include file="parts/footer.jsp" %>
                <!-- /FOOTER -->

                <!-- jQuery Plugins -->
                <script src="js/jquery.min.js"></script>
                <script src="js/bootstrap.min.js"></script>
                <script src="js/slick.min.js"></script>
                <script src="js/nouislider.min.js"></script>
                <script src="js/jquery.zoom.min.js"></script>
                <script src="js/main.js"></script>

    </body>

    </html>
    <p class="product-category">Tiểu thuyết</p>
    <h3 class="product-name"><a href="#">Harry Potter và Hòn đá lửa</a></h3>
    <h4 class="product-price">150,000₫ <del class="product-old-price">200,000₫</del>
    </h4>
    </div>
    </div>
    <!-- product widget -->
    </div>

    <div>
        <!-- product widget -->
        <div class="product-widget">
            <div class="product-img">
                <img src="./img/index/VanHoc/neubiettramnamlahuuhan.jpg" alt="Nếu biết trăm năm là hữu hạn">
            </div>
            <div class="product-body">
                <p class="product-category">Ngôn tình</p>
                <h3 class="product-name"><a href="#">Nếu biết trăm năm là hữu hạn</a></h3>
                <h4 class="product-price">80,000₫ <del class="product-old-price">90,000₫</del>
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
                <h4 class="product-price">120,000₫ <del class="product-old-price">150,000₫</del>
                </h4>
            </div>
        </div>
        <!-- /product widget -->

        <!-- product widget -->
        <div class="product-widget">
            <div class="product-img">
                <img src="./img/index/VanHoc/ongtramtuoitreoquacuasovabienmat.jpg" alt="Ông trăm tuổi trèo qua cửa sổ và biến mất">
            </div>
            <div class="product-body">
                <p class="product-category">Ngụ ngôn</p>
                <h3 class="product-name"><a href="#">Ông trăm tuổi trèo cửa sổ & biến mất</a>
                </h3>
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
                <h4 class="product-price">80,000₫ <del class="product-old-price">100,000₫</del>
                </h4>
            </div>
        </div>
        <!-- product widget -->
    </div>
    <!-- /aside Widget -->
    </div>
    <!-- /ASIDE -->

    <!-- STORE -->
    <div id="store" class="col-md-9">
        <!-- store top filter -->
        <div class="store-filter clearfix">
            <div class="store-sort">
                <label>
										Xếp theo:
										<select class="input-select">
											<option value="0">Bán chạy</option>
											<option value="1">Mới nhập</option>
										</select>
									</label>

                <label>
										Xem:
										<select class="input-select">
											<option value="0">9</option>
											<option value="1">32</option>
										</select>
										&nbsp;sản phẩm
									</label>
            </div>
            <ul class="store-grid">
                <li class="active"><i class="fa fa-th"></i></li>
                <li><a href="#"><i class="fa fa-th-list"></i></a></li>
            </ul>
        </div>
        <!-- /store top filter -->

        <!-- store products -->
        <div class="row">
            <!-- product -->
            <div class="col-md-4 col-xs-6">
                <div class="product">
                    <div class="product-img">
                        <img src="./img/search/108-truyen-ngu-ngon-hay-nhat.jpg" alt="108 truyện ngụ ngôn hay nhất">
                    </div>
                    <div class="product-body">
                        <p class="product-category">Văn học</p>
                        <h3 class="product-name"><a href="#">108 truyện ngụ ngôn hay nhất</a></h3>
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
														style="color: black;"><i class="fa fa-eye"></a></i><span
														class="tooltipp">xem nhanh</span></button>
                        </div>
                    </div>
                    <div class="add-to-cart">
                        <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> thêm vào
												giỏ</button>
                    </div>
                </div>
            </div>
            <!-- /product -->

            <!-- product -->
            <div class="col-md-4 col-xs-6">
                <div class="product">
                    <div class="product-img">
                        <img src="./img/search/100-mau-chuyen-co-dong-tay-nguyen-lan.jpg" alt="100 mẩu chuyện cổ Đông Tây">
                        <div class="product-label">
                            <span class="sale">-30%</span>
                            <span class="new">MỚI</span>
                        </div>
                    </div>
                    <div class="product-body">
                        <p class="product-category">Văn học</p>
                        <h3 class="product-name"><a href="#">100 Mẫu chuyện cổ Đông Tây</a></h3>
                        <h4 class="product-price">115,000₫ <del class="product-old-price">150,000₫</del></h4>
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
														style="color: black;"><i class="fa fa-eye"></a></i><span
														class="tooltipp">xem nhanh</span></button>
                        </div>
                    </div>
                    <div class="add-to-cart">
                        <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> thêm vào
												giỏ</button>
                    </div>
                </div>
            </div>
            <!-- /product -->

            <div class="clearfix visible-sm visible-xs"></div>

            <!-- product -->
            <div class="col-md-4 col-xs-6">
                <div class="product">
                    <div class="product-img">
                        <img src="./img/search/365-chuyen-ke-hang-dem-mua-thu.jpg" alt="365 chuyện kể hằng đêm mùa thu">
                        <div class="product-label">
                            <span class="new">MỚI</span>
                        </div>
                    </div>
                    <div class="product-body">
                        <p class="product-category">Văn học</p>
                        <h3 class="product-name"><a href="#">365 chuyện kể hằng đêm mùa thu</a></h3>
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
														style="color: black;"><i class="fa fa-eye"></a></i><span
														class="tooltipp">xem nhanh</span></button>
                        </div>
                    </div>
                    <div class="add-to-cart">
                        <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> thêm vào
												giỏ</button>
                    </div>
                </div>
            </div>
            <!-- /product -->

            <div class="clearfix visible-lg visible-md"></div>

            <!-- product -->
            <div class="col-md-4 col-xs-6">
                <div class="product">
                    <div class="product-img">
                        <img src="./img/search/c01.jpg" alt="100 huyền thoại Viking hay nhất mọi thời đại">
                        <div class="product-label">
                            <span class="sale">-30%</span>
                            <span class="new">MỚI</span>
                        </div>
                    </div>
                    <div class="product-body">
                        <p class="product-category">Văn học</p>
                        <h3 class="product-name"><a href="#">100 huyền thoại Viking hay nhất mọi thời đại</a></h3>
                        <h4 class="product-price">115,000₫ <del class="product-old-price">150,000₫</del></h4>
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
														style="color: black;"><i class="fa fa-eye"></a></i><span
														class="tooltipp">xem nhanh</span></button>
                        </div>
                    </div>
                    <div class="add-to-cart">
                        <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> thêm vào
												giỏ</button>
                    </div>
                </div>
            </div>
            <!-- /product -->

            <div class="clearfix visible-sm visible-xs"></div>

            <!-- product -->
            <div class="col-md-4 col-xs-6">
                <div class="product">
                    <div class="product-img">
                        <img src="./img/search/c02.jpg" alt="100 huyền thoại Hy Lạp hay nhất mọi thời đại">
                        <div class="product-label">
                            <span class="sale">-30%</span>
                            <span class="new">MỚI</span>
                        </div>
                    </div>
                    <div class="product-body">
                        <p class="product-category">Văn học</p>
                        <h3 class="product-name"><a href="#">100 huyền thoại Hy Lạp hay nhất mọi thời đại</a></h3>
                        <h4 class="product-price">115,000₫ <del class="product-old-price">150,000₫</del></h4>
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
														style="color: black;"><i class="fa fa-eye"></a></i><span
														class="tooltipp">xem nhanh</span></button>
                        </div>
                    </div>
                    <div class="add-to-cart">
                        <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> thêm vào
												giỏ</button>
                    </div>
                </div>
            </div>
            <!-- /product -->

            <!-- product -->
            <div class="col-md-4 col-xs-6">
                <div class="product">
                    <div class="product-img">
                        <img src="./img/search/buratino-va-chiec-chia-khoa-vang.jpg" alt="Truyện Buratino và chiếc chìa khóa vàng">
                        <div class="product-label">
                            <span class="sale">-30%</span>
                            <span class="new">MỚI</span>
                        </div>
                    </div>
                    <div class="product-body">
                        <p class="product-category">Văn học</p>
                        <h3 class="product-name"><a href="#">Truyện Buratino và chiếc chìa khóa vàng</a></h3>
                        <h4 class="product-price">115,000₫ <del class="product-old-price">150,000₫</del></h4>
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
														style="color: black;"><i class="fa fa-eye"></a></i><span
														class="tooltipp">xem nhanh</span></button>
                        </div>
                    </div>
                    <div class="add-to-cart">
                        <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> thêm vào
												giỏ</button>
                    </div>
                </div>
            </div>
            <!-- /product -->

            <div class="clearfix visible-lg visible-md visible-sm visible-xs"></div>

            <!-- product -->
            <div class="col-md-4 col-xs-6">
                <div class="product">
                    <div class="product-img">
                        <img src="./img/search/Truyen-co-Tay-Tang.jpg" alt="Truyện cổ Tây Tạng">
                        <div class="product-label">
                            <span class="sale">-30%</span>
                            <span class="new">MỚI</span>
                        </div>
                    </div>
                    <div class="product-body">
                        <p class="product-category">Văn học</p>
                        <h3 class="product-name"><a href="#">Truyện cổ Tây Tạng</a></h3>
                        <h4 class="product-price">115,000₫ <del class="product-old-price">150,000₫</del></h4>
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
														style="color: black;"><i class="fa fa-eye"></a></i><span
														class="tooltipp">xem nhanh</span></button>
                        </div>
                    </div>
                    <div class="add-to-cart">
                        <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> thêm vào
												giỏ</button>
                    </div>
                </div>
            </div>
            <!-- /product -->

            <!-- product -->
            <div class="col-md-4 col-xs-6">
                <div class="product">
                    <div class="product-img">
                        <img src="./img/search/truyen-ke-tay-tang.jpg" alt="Truyện kể Tây Tạng">
                        <div class="product-label">
                            <span class="sale">-30%</span>
                            <span class="new">MỚI</span>
                        </div>
                    </div>
                    <div class="product-body">
                        <p class="product-category">Văn học</p>
                        <h3 class="product-name"><a href="#">Truyện kể Tây Tạng</a></h3>
                        <h4 class="product-price">115,000₫ <del class="product-old-price">150,000₫</del></h4>
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
														style="color: black;"><i class="fa fa-eye"></a></i><span
														class="tooltipp">xem nhanh</span></button>
                        </div>
                    </div>
                    <div class="add-to-cart">
                        <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> thêm vào
												giỏ</button>
                    </div>
                </div>
            </div>
            <!-- /product -->

            <div class="clearfix visible-sm visible-xs"></div>

            <!-- product -->
            <div class="col-md-4 col-xs-6">
                <div class="product">
                    <div class="product-img">
                        <img src="./img/search/than-thoai-bac-au.jpg" alt="Truyện thần thoại Bắc Âu">
                        <div class="product-label">
                            <span class="sale">-30%</span>
                            <span class="new">MỚ<I></I></span>
                        </div>
                    </div>
                    <div class="product-body">
                        <p class="product-category">Văn học</p>
                        <h3 class="product-name"><a href="#">Truyện thần thoại Bắc Âu</a></h3>
                        <h4 class="product-price">115,000₫ <del class="product-old-price">150,000₫</del></h4>
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
														style="color: black;"><i class="fa fa-eye"></a></i><span
														class="tooltipp">xem nhanh</span></button>
                        </div>
                    </div>
                    <div class="add-to-cart">
                        <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> thêm vào
												giỏ</button>
                    </div>
                </div>
            </div>
            <!-- /product -->
        </div>
        <!-- /store products -->

        <!-- store bottom filter -->
        <div class="store-filter clearfix">
            <ul class="store-pagination">
                <li><a href="#"><i class="fa fa-angle-left"></i></a></li>
                <li class="active">1</li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
            </ul>
        </div>
        <!-- /store bottom filter -->
    </div>
    <!-- /STORE -->
    </div>
    <!-- /row -->
    </div>
    <!-- /container -->
    </div>
    <!-- /SECTION -->
    </div>
    </div>

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
                    <img class="p-product-image-feature" src="./img/quickview/large1.jpg" alt="Đừng lựa chọn an nhàn khi còn trẻ">
                </div>
                <div id="quickview-sliderproduct">
                    <div class="quickview-slider">
                        <ul class="owl-carousel owl-theme" style="display: block; opacity: 1;">
                            <div class="owl-wrapper-outer">
                                <div class="owl-wrapper" style="width: 600px; left: 0px; display: flex;">
                                    <div class="owl-item" style="width: 100px;">
                                        <li class="product-thumb active">
                                            <a href="javascript:void(0);" data-image="./img/quickview/large1.jpg">
                                                <img src="./img/quickview/small1.jpg" style="width: 80px;height: 100px;"></a>
                                        </li>
                                    </div>
                                    <div class="owl-item" style="width: 100px;">
                                        <li class="product-thumb">
                                            <a href="javascript:void(0);" data-image="./img/quickview/large2.jpg">
                                                <img src="./img/quickview/small2.jpg" style="width: 80px;height: 100px;"></a>
                                        </li>
                                    </div>
                                    <div class="owl-item" style="width: 100px;">
                                        <li class="product-thumb">
                                            <a href="javascript:void(0);" data-image="./img/quickview/large3.jpg">
                                                <img src="./img/quickview/small3.jpg" style="width: 80px;height: 100px;"></a>
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
                                        owl-prev</div>
                                    <div class="owl-next">
                                        owl-next</div>
                                </div>
                            </div>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-7">
                <strong>Mô tả:</strong>
                <div>
                    Trong độ xuân xanh phơi phới ngày ấy, bạn không dám mạo hiểm, không dám nỗ lực để kiếm học bổng, không chịu tìm tòi những thử thách trong công việc, không phấn đấu hướng đến ước mơ của mình. Bạn mơ mộng rằng làm việc xong sẽ vào làm ở một công ty nổi
                    tiếng, làm một thời gian sẽ thăng quan tiến chức. Mơ mộng ....<a href="product.jsp" style="color: tomato;">xem thêm</a>
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
        <!-- /FOOTER -->


        </body>

        </html>