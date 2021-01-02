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

</head>

<body>

	<!-- form sign up -->
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
					<li><a href="account.jsp"><i class="fa fa-user-o"></i>Tài khoản</a></li>
					<li><a href="admin/index.html"><i class="fa fa-user-o"></i>Admin</a></li>
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
								<button class="search-btn">Tìm kiếm</button>
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
										<a href="#">Xem giỏ hàng</a>
										<a href="#">Thanh toán<i class="fa fa-arrow-circle-right"></i></a>
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
							<li class="active"><a href="#">Trang chủ</a></li>
							<li><a href="#">Bán chạy</a></li>
							<li><a href="#">Khuyến mãi</a></li>
							<li><a href="#">Mới</a></li>
							<li><a href="#">Giới thiệu</a></li>
							<li><a href="#">Blog</a></li>
							<li><a href="#">Liên hệ</a></li>
						</ul>
						<!-- /NAV -->
					</div>
					<!-- /responsive-nav -->
				</div>
				<!-- /container -->
			</nav>
			<!-- /NAVIGATION -->

			<!-- BREADCRUMB -->
			<div id="breadcrumb" class="section">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-12">
							<h3 class="breadcrumb-header">Regular Page</h3>
							<ul class="breadcrumb-tree">
								<li><a href="#">Home</a></li>
								<li class="active">Blank</li>
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
					</div>
					<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /SECTION -->
		</div>
	</div>


	<!-- NEWSLETTER -->
	<div id="newsletter" class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-12">
					<div class="newsletter">
						<p>Đăng ký để nhận <strong>TIN MỚI NHẤT</strong></p>
						<form>
							<input class="input" type="email" placeholder="Nhập email của bạn" style="width: 250px;">
							<button class="newsletter-btn"><i class="fa fa-envelope"></i> Đăng ký</button>
						</form>
						<ul class="newsletter-follow">
							<li>
								<a href="#"><i class="fa fa-facebook"></i></a>
							</li>
							<li>
								<a href="#"><i class="fa fa-twitter"></i></a>
							</li>
							<li>
								<a href="#"><i class="fa fa-instagram"></i></a>
							</li>
							<li>
								<a href="#"><i class="fa fa-pinterest"></i></a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /NEWSLETTER -->

	<!-- FOOTER -->
	<footer id="footer">
		<!-- top footer -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-3 col-xs-6">
						<div class="footer">
							<h3 class="footer-title">Liên hệ</h3>
							<p>JB nhận đặt hàng trực tuyến và giao hàng tận nơi. KHÔNG hỗ trợ đặt mua và nhận
								hàng
								trực tiếp tại Hệ thống cửa hàng JB trên toàn quốc.</p>
							<ul class="footer-links">
								<li><a href="#"><i class="fa fa-map-marker"></i>Khu 6, Linh Trung, Thủ Đức</a>
								</li>
								<li><a href="#"><i class="fa fa-phone"></i>+963-49-46-74</a></li>
								<li><a href="#"><i class="fa fa-envelope-o"></i>JB_BookStore@gmail.com.vn</a>
								</li>
							</ul>
						</div>
					</div>

					<div class="col-md-3 col-xs-6">
						<div class="footer">
							<h3 class="footer-title">Dịch vụ</h3>
							<ul class="footer-links">
								<li><a href="#">Điều khoản sử dụng</a></li>
								<li><a href="#">Chính sách bảo mật</a></li>
								<li><a href="#">Giới thiệu về JB</a></li>
								<li><a href="#">Hệ thống trung tâm cửa hàng</a></li>
							</ul>
						</div>
					</div>

					<div class="clearfix visible-xs"></div>

					<div class="col-md-3 col-xs-6">
						<div class="footer">
							<h3 class="footer-title">Hỗ trợ</h3>
							<ul class="footer-links">
								<li><a href="#">Chính sách đổi trả</a></li>
								<li><a href="#">Đối tác khách sỉ</a></li>
								<li><a href="#">Phương thức vận chuyển</a></li>
								<li><a href="#">Phương thức thanh toán</a></li>
							</ul>
						</div>
					</div>

					<div class="col-md-3 col-xs-6">
						<div class="footer">
							<h3 class="footer-title">Tài khoản của tôi</h3>
							<ul class="footer-links">
								<li><a href="#" data-toggle="modal" data-target="#id01">Đăng nhập</a></li>
								<li><a href="#" data-toggle="modal" data-target="#exampleModal">Đăng ký</a></li>
								<li><a href="#">Chi tiết tài khoản</a></li>
								<li><a href="#">Lịch sử mua hàng</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /top footer -->

		<!-- bottom footer -->
		<div id="bottom-footer" class="section">
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12 text-center">
						<ul class="footer-payments">
							<li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
							<li><a href="#"><i class="fa fa-credit-card"></i></a></li>
							<li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
							<li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
							<li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
							<li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
						</ul>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /bottom footer -->
	</footer>
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