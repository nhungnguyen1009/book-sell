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
    <link type="text/css" rel="stylesheet" href="css/cart.css" />
</head>

<body>

<%@include file="parts/header.jsp" %>

			<!-- BREADCRUMB -->
			<div id="breadcrumb" class="section">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-12">
							<!-- <h3 class="breadcrumb-header">Trang chủ</h3> -->
							<ul class="breadcrumb-tree">
								<li><a href="index.jsp">Trang chủ</a></li>
								<li class="active">Giỏ hàng</li>
							</ul>
						</div>
					</div>
					<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /BREADCRUMB -->
            <div class="container"> 
                <table id="cart" class="table table-hover table-condensed"> 
                 <thead> 
                  <tr> 
                   <th style="width:50%">Tên sản phẩm</th> 
                   <th style="width:10%">Giá</th> 
                   <th style="width:8%">Số lượng</th> 
                   <th style="width:22%" class="text-center">Thành tiền</th> 
                   <th style="width:10%"> </th> 
                  </tr> 
                 </thead> 
                 <tbody><tr> 
                  <td data-th="Product"> 
                   <div class="row"> 
                    <div class="col-sm-2 hidden-xs"><img src="./img/cotichthanthoai/10-huyen-thoai-viking-hay-nhat-moi-thoi-dai.jpg" alt="Sản phẩm 1" class="img-responsive" width="100">
                    </div> 
                    <div class="col-sm-10"> 
                     <h4 class="nomargin">Viking</h4> 
                     <p>10 huyền thoại Viking hay nhất mọi thời đại</p> 
                    </div> 
                   </div> 
                  </td> 
                  <td data-th="Price">100,000 đ</td> 
                  <td data-th="Quantity"><input class="form-control text-center" value="1" type="number" min="1">
                  </td> 
                  <td data-th="Subtotal" class="text-center">100,000 đ</td> 
                  <td class="actions" data-th="">
                   <button class="btn btn-info btn-sm"><i class="fa fa-edit"></i>
                   </button> 
                   <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i>
                   </button>
                  </td> 
                 </tr> 
                 <tr> 
                  <td data-th="Product"> 
                   <div class="row"> 
                    <div class="col-sm-2 hidden-xs"><img src="./img/cotichthanthoai/10-huyen-thoai-hy-lap-hay-nhat-moi-thoi-dai.jpg" alt="Sản phẩm 1" class="img-responsive" width="100">
                    </div> 
                    <div class="col-sm-10"> 
                     <h4 class="nomargin">Hy Lạp</h4> 
                     <p>10 huyền thoại Hy Lạp hay nhất mọi thời đại</p> 
                    </div> 
                   </div> 
                  </td> 
                  <td data-th="Price">110,000 đ</td> 
                  <td data-th="Quantity"><input class="form-control text-center" value="2" type="number" min="1" > 
                  </td> 
                  <td data-th="Subtotal" class="text-center">220,000 đ</td> 
                  <td class="actions" data-th="">
                   <button class="btn btn-info btn-sm"><i class="fa fa-edit"></i>
                   </button> 
                   <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i>
                   </button>
                  </td> 
                 </tr> 
                 </tbody><tfoot> 
                  <!-- <tr class="visible-xs"> 
                   <td class="text-center"><strong>Tổng 320,000 đ</strong>
                   </td> 
                  </tr>  -->
                  <tr> 
                   <td><a href="index.jsp" class="btn btn-warning"><i class="fa fa-angle-left"></i> Tiếp tục mua hàng</a>
                   </td> 
                   <td colspan="2" class="hidden-xs"> </td> 
                   <td class="hidden-xs text-center"><strong>Tổng tiền 320,000 đ</strong>
                   </td> 
                   <td><a href="checkout.jsp" class="btn btn-success btn-block">Thanh toán <i class="fa fa-angle-right"></i></a>
                   </td> 
                  </tr> 
                 </tfoot> 
                </table>
               </div>
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


<%@include file="parts/footer.jsp" %>

</body>

</html>