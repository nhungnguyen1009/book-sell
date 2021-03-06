<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<title>JB BookStore</title>

	<!-- iconClose -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

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
	<link type="text/css" rel="stylesheet" href="css/quickview.css" />

	<!-- Modernizr -->
	<script src="js/modernizr.js"></script>

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

</head>

<body>

	<!-- form sign up -->
<<<<<<< HEAD:src/main/webapp/tamly_kynangsong.html
	<div class="modal" id="id01" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"
						onclick="document.getElementById('id01').style.display='none'">
						<span aria-hidden="true">&times;</span>
					</button>

					<h3 class="modal-title" style="text-align: center;">Đăng ký </h3>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label for="exampleInputFullname">Họ tên*</label>
							<input type="name" class="form-control" id="exampleInputFullname1"
								aria-describedby="nameHelp" placeholder="Họ và tên">
						</div>
						<div class="form-group" id="example">
							<label for="exampleInputEmail1">Email</label>
							<input type="email" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" placeholder="Email">

						</div>
						<!-- <div class="form-group" >
						<label for="exampleInputPhone">Số điện thoại</label>
						<input type="phone" class="form-control" id="exampleInputPhone" aria-describedby="phoneHelp" placeholder="Số điện thoại">
					</div> -->
						<div class="form-group">
							<label for="exampleInputFullname">Tên đăng nhập</label>
							<input type="name" class="form-control" id="exampleInputFullname"
								aria-describedby="nameHelp" placeholder="Tên đăng nhập">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Mật khẩu</label>
							<input type="password" class="form-control" id="exampleInputPassword1"
								placeholder="Mật khẩu">
							<small id="emailHelp" class="form-text text-muted">Bạn đừng để ai nhìn thấy mật khẩu
								nhé!</small>
						</div>
						<div class="form-group">
							<label for="exampleInputPassword2">Nhập lại mật khẩu</label>
							<input type="password" class="form-control" id="exampleInputPassword2"
								placeholder="Nhập lại mật khẩu">
						</div>
						<div class="form-group form-check" style="float: right;">
							<button onclick="document.getElementById('id01').style.display='none'"><a href="#"
									data-toggle="modal" data-target="#exampleModal">Đăng nhập</a></button>
						</div>
						<div style="text-align: center;">
							<button type="submit" class="btn btn-primary"
								style="width: 50%; height: 50px; border-radius: 25px; outline: 0px;">Gửi</button><br>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>
	<!-- End form sign up -->


	<!--	form login-->
	<div class="modal" id="exampleModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h3 class="modal-title" style="text-align: center;">Đăng nhập</h3>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group" id="example1">
							<label for="exampleInputEmail1">Tên đăng nhập hoặc email</label>
							<input type="email" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp"
								placeholder="Tên đăng nhập hoặc email">
							<!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Mật khẩu</label>
							<input type="password" class="form-control" id="exampleInputPassword"
								placeholder="Mật khẩu">
						</div>

						<div class="form-group form-check">
							<!-- <input type="checkbox" class="form-check-input" id="exampleCheck1"> -->
							<div style="text-align: right;margin-top: -5px;font-size: 12px;">
								<a href="#" data-toggle="modal" data-target="#exampleModal">Quên mật khẩu?</a><br>
							</div>
							<div style="text-align: center;">
								<button type="submit" class="btn btn-primary"
									style="width: 50%; height: 50px; border-radius: 25px; outline: 0px;">Đăng
									nhập</button><br>
							</div>
							<div style="margin-bottom:-10px; margin-top: 15px; text-align: center;">
								Bạn chưa có tài khoản?
								<button onclick="document.getElementById('id01').style.display='block'"><a href="#"
										data-toggle="modal" data-target="#exampleModal">Đăng ký</a></button>
							</div>

						</div>

					</form>
				</div>

			</div>
		</div>
	</div>
	<!-- End form login -->

	<!-- HEADER -->
	<header>
		<!-- TOP HEADER -->
		<div id="top-header">
			<div class="container">
				<ul class="header-links pull-left">
					<li><a href="#"><i class="fa fa-phone"></i> +963-49-46-74</a></li>
					<li><a href="#`"><i class="fa fa-envelope-o"></i> JB_bookstore@gmail.com</a></li>
					<li><a href="#"><i class="fa fa-map-marker"></i> Quận Thủ Đức, TPHCM</a></li>
				</ul>
				<ul class="header-links pull-right">
					<li><a href="#" data-toggle="modal" data-target="#id01"><i class="fa fa-user-o"></i>Đăng ký</a>
					</li>
					<li><a href="#" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-user-o"></i>Đăng
							nhập</a></li>
					<li><a href="account.html"><i class="fa fa-user-o"></i>Tài khoản</a></li>
					<li><a href="admin/index.jsp"><i class="fa fa-user-o"></i>Admin</a></li>
				</ul>
			</div>
		</div>
		<!-- /TOP HEADER -->

		<!-- MAIN HEADER -->
		<div id="header">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- LOGO -->
					<div class="col-md-3">
						<div class="header-logo">
							<a href="#" class="logo">
								<img src="./img/logo.png" alt="">
							</a>
						</div>
					</div>
					<!-- /LOGO -->

					<!-- SEARCH BAR -->
					<div class="col-md-6">
						<div class="header-search">
							<form>

								<input class="input" placeholder="Search here">
								<button class="search-btn"><a href="search.html" style="color: white;">Tìm kiếm</a></button>
							</form>
						</div>
					</div>
					<!-- /SEARCH BAR -->

					<!-- ACCOUNT -->
					<div class="col-md-3 clearfix">
						<div class="header-ctn">
							<!-- Wishlist -->
							<div>
								<a href="#">
									<i class="fa fa-heart-o"></i>
									<span>Yêu thích</span>
									<div class="qty">2</div>
								</a>
							</div>
							<!-- /Wishlist -->

							<!-- Cart -->
							<div class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
									<i class="fa fa-shopping-cart"></i>
									<span>Giỏ hàng</span>
									<div class="qty">3</div>
								</a>
								<div class="cart-dropdown">
									<div class="cart-list">
										<div class="product-widget">
											<div class="product-img">
												<img src="./img/cotichthanthoai/10-huyen-thoai-viking-hay-nhat-moi-thoi-dai.jpg" alt="">
										</div>
										<div class="product-body">
											<h3 class="product-name"><a href="#">Viking</a></h3>
											<h4 class="product-price"><span class="qty">1x</span>100.000VNĐ</h4>
										</div>
										<button class="delete"><i class="fa fa-close"></i></button>
									</div>

									<div class="product-widget">
										<div class="product-img">
											<img src="./img/cotichthanthoai/10-huyen-thoai-hy-lap-hay-nhat-moi-thoi-dai.jpg" alt="">
											</div>
											<div class="product-body">
												<h3 class="product-name"><a href="#">Hy Lạp</a></h3>
												<h4 class="product-price"><span class="qty">2x</span>110.000VNĐ</h4>
											</div>
											<button class="delete"><i class="fa fa-close"></i></button>
										</div>
									</div>
									<div class="cart-summary">
										<small>3 Sản phẩm</small>
										<h5>Tổng tiền: 320.000VNĐ</h5>
									</div>
									<div class="cart-btns">
										<a href="cart.html">Xem giỏ hàng</a>
										<a href="checkout.html">Thanh toán<i class="fa fa-arrow-circle-right"></i></a>
									</div>
								</div>
							</div>
							<!-- /Cart -->
						</div>
					</div>
					<!-- /ACCOUNT -->
				</div>
				<!-- row -->
			</div>
			<!-- container -->
		</div>
		<!-- /MAIN HEADER -->
	</header>
	<!-- /HEADER -->

	<!-- VERTICAL MENU  -->
	<div class="container">

		<div id="right-menu">
			<!-- NAVIGATION -->
			<nav id="navigation">
				<!-- container -->
				<div class="container">
					<!-- responsive-nav -->
					<div id="responsive-nav">
						<!-- NAV -->
						<ul class="main-nav nav navbar-nav">
							<li><a href="index.html">Trang chủ</a></li>
							<li><a href="selling.html">Bán chạy</a></li>
							<li><a href="discount.html">Khuyến mãi</a></li>
							<li><a href="new.html">Mới</a></li>
							<li><a href="storeIntroduced.html">Giới thiệu</a></li>
							<li><a href="blog.html">Blog</a></li>
							<li><a href="contact.html">Liên hệ</a></li>
						</ul>
						<!-- /NAV -->
					</div>
					<!-- /responsive-nav -->
				</div>
				<!-- /container -->
			</nav>
=======
	<%@include file="parts/header.jsp" %>
>>>>>>> beb6171e031060683c3e3cdf6db133bf9756d9e2:src/main/webapp/tamly_kynangsong.jsp
			<!-- /NAVIGATION -->

			<!-- BREADCRUMB -->
			<div id="breadcrumb" class="section">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-12">
							<ul class="breadcrumb-tree">
								<h3 class="breadcrumb-header">Tâm lý - Kỹ năng sống</h3>
								<li><a href="index.jsp">Trang chủ</a></li>
								<li class="active">Tâm lý - Kỹ năng sống</li>
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
						<!-- ASIDE -->
						<div id="aside" class="col-md-3">
							<!-- aside Widget -->
							<div class="aside">
								<h3 class="aside-title">Thể loại</h3>
								<div class="checkbox-filter">

									<div class="input-checkbox">
										<input type="checkbox" id="category-1">
										<label for="category-1">
											<span></span>
											Sách thiếu nhi
											<small>(120)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="category-2">
										<label for="category-2">
											<span></span>
											Sách giáo khoa
											<small>(740)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="category-3">
										<label for="category-3">
											<span></span>
											Khoa học
											<small>(1450)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="category-4">
										<label for="category-4">
											<span></span>
											Văn học
											<small>(578)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="category-5">
										<label for="category-5">
											<span></span>
											Sách nước ngoài
											<small>(120)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="category-6">
										<label for="category-6">
											<span></span>
											Kinh dị
											<small>(740)</small>
										</label>
									</div>
								</div>
							</div>
							<!-- /aside Widget -->

							<!-- aside Widget -->
							<div class="aside">
								<h3 class="aside-title">Giá</h3>
								<div class="price-filter">
									<div id="price-slider"></div>
									<div class="input-number price-min">
										<input id="price-min" type="number">
										<span class="qty-up">+</span>
										<span class="qty-down">-</span>
									</div>
									<span>-</span>
									<div class="input-number price-max">
										<input id="price-max" type="number">
										<span class="qty-up">+</span>
										<span class="qty-down">-</span>
									</div>
								</div>
							</div>
							<!-- /aside Widget -->

							<!-- aside Widget -->
							<div class="aside">
								<h3 class="aside-title">Bán chạy</h3>
								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/index/VanHoc/100cauchuyenchobetrai.jpg"
											alt="100 câu chuyện cho bé trai">
									</div>
									<div class="product-body">
										<p class="product-category">Truyện</p>
										<h3 class="product-name"><a href="#">100 câu chuyện cho bé trai</a></h3>
										<h4 class="product-price">50,000₫ <del class="product-old-price">90,000₫</del>
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
										<h4 class="product-price">80,000₫ <del class="product-old-price">90,000₫</del>
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
										<img src="./img/index/VanHoc/neubiettramnamlahuuhan.jpg"
											alt="Nếu biết trăm năm là hữu hạn">
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
										<img src="./img/index/VanHoc/ongtramtuoitreoquacuasovabienmat.jpg"
											alt="Ông trăm tuổi trèo qua cửa sổ và biến mất">
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
											<img src="./img/vanhoc/tải xuống.png" alt="Văn chương thẩm mĩ và văn hóa">
										</div>
										<div class="product-body">
											<p class="product-category">Văn học</p>
											<h3 class="product-name"><a href="#">Văn chương thẩm mĩ và văn hóa</a></h3>
											<h4 class="product-price">63,000₫</h4>
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
											<img src="./img/vanhoc/2-Cham hon su dung lai.jpg" alt="Chậm hơn sự dừng lại">
											<div class="product-label">
												<span class="sale">-30%</span>
												<span class="new">MỚI</span>
											</div>
										</div>
										<div class="product-body">
											<p class="product-category">Văn học</p>
											<h3 class="product-name"><a href="#">Chậm hơn sự dừng lại</a></h3>
											<h4 class="product-price">115,000₫ <del
													class="product-old-price">150,000₫</del></h4>
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
											<img src="./img/vanhoc/3-Doi anh ve.jpg" alt="Đợi anh về">
											<div class="product-label">
												<span class="new">MỚI</span>
											</div>
										</div>
										<div class="product-body">
											<p class="product-category">Văn học</p>
											<h3 class="product-name"><a href="#">Đợi anh về</a></h3>
											<h4 class="product-price">65,000₫</h4>
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
											<img src="./img/vanhoc/truyện ngắn đương đại Hàn Quốc.png" alt="Truyện ngắn đương đại Hàn Quốc">
											<div class="product-label">
												<span class="sale">-30%</span>
												<span class="new">MỚI</span>
											</div>
										</div>
										<div class="product-body">
											<p class="product-category">Văn học</p>
											<h3 class="product-name"><a href="#">Truyện ngắn đương đại Hàn Quốc</a></h3>
											<h4 class="product-price">115,000₫ <del
													class="product-old-price">150,000₫</del></h4>
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
											<img src="./img/vanhoc/canh chim trong gio.jpg" alt="Cánh chim trong gió">
											<div class="product-label">
												<span class="sale">-30%</span>
												<span class="new">MỚI</span>
											</div>
										</div>
										<div class="product-body">
											<p class="product-category">Văn học</p>
											<h3 class="product-name"><a href="#">Cánh chim trong gió</a></h3>
											<h4 class="product-price">115,000₫ <del
													class="product-old-price">150,000₫</del></h4>
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
											<img src="./img/vanhoc/Hop tuyen van hoc Han Quóc.png" alt="Hợp tuyển văn học cổ điển Hàn Quốc">
											<div class="product-label">
												<span class="sale">-30%</span>
												<span class="new">MỚI</span>
											</div>
										</div>
										<div class="product-body">
											<p class="product-category">Văn học</p>
											<h3 class="product-name"><a href="#">Hợp tuyển văn học cổ điển Hàn Quốc</a></h3>
											<h4 class="product-price">115,000₫ <del
													class="product-old-price">150,000₫</del></h4>
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
											<img src="./img/vanhoc/truyen kieu chua xong dieu nghi.png" alt="Truyện Kiều chưa xong điều nghĩ">
											<div class="product-label">
												<span class="sale">-30%</span>
												<span class="new">MỚI</span>
											</div>
										</div>
										<div class="product-body">
											<p class="product-category">Văn học</p>
											<h3 class="product-name"><a href="#">Truyện Kiều chưa xong điều nghĩ</a></h3>
											<h4 class="product-price">115,000₫ <del
													class="product-old-price">150,000₫</del></h4>
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
											<img src="./img/vanhoc/tải xuống (1).png" alt="Ở đâu đó có điện thoại gọi tôi">
											<div class="product-label">
												<span class="sale">-30%</span>
												<span class="new">MỚI</span>
											</div>
										</div>
										<div class="product-body">
											<p class="product-category">Văn học</p>
											<h3 class="product-name"><a href="#">Ở đâu đó có điện thoại gọi tôi</a></h3>
											<h4 class="product-price">115,000₫ <del
													class="product-old-price">150,000₫</del></h4>
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
											<img src="./img/vanhoc/tải xuống (2).png" alt="Người Thầy">
											<div class="product-label">
												<span class="sale">-30%</span>
												<span class="new">MỚ<I></I></span>
											</div>
										</div>
										<div class="product-body">
											<p class="product-category">Văn học</p>
											<h3 class="product-name"><a href="#">Người Thầy</a></h3>
											<h4 class="product-price">115,000₫ <del
													class="product-old-price">150,000₫</del></h4>
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
					<img class="p-product-image-feature" src="./img/quickview/large1.jpg"
						alt="Đừng lựa chọn an nhàn khi còn trẻ">
				</div>
				<div id="quickview-sliderproduct">
					<div class="quickview-slider">
						<ul class="owl-carousel owl-theme" style="display: block; opacity: 1;">
							<div class="owl-wrapper-outer">
								<div class="owl-wrapper" style="width: 600px; left: 0px; display: flex;">
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
					Trong độ xuân xanh phơi phới ngày ấy, bạn không dám mạo hiểm, không dám nỗ lực
					để kiếm học bổng, không chịu tìm tòi những thử thách trong công việc, không phấn
					đấu hướng đến ước mơ của mình. Bạn mơ mộng rằng làm việc xong sẽ vào làm ở một
					công ty nổi tiếng, làm một thời gian sẽ thăng quan tiến chức. Mơ mộng ....<a href="product.jsp"
						style="color: tomato;">xem thêm</a>
				</div></br>
				<div><strong>Tác giả:</strong> Cảnh Thiên</div></br>
				<div><strong>Thể loại:</strong> Văn học</div></br>
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