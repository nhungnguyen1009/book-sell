<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="nlu.edu.fit.bookstore.utils.Utils" %>
<%@ page import="nlu.edu.fit.bookstore.model.User" %>
<%@ page import="nlu.edu.fit.bookstore.model.Cart" %>
<%@ page import="nlu.edu.fit.bookstore.controller.AddCartItem" %>
<%@ page import="nlu.edu.fit.bookstore.model.CartItem" %>

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
<![endif]-->

<%
    User user = (User) session.getAttribute("user");
    if (user != null) System.out.println("userInfo" + user.getUsername());
%>
<%
    Cart cartItems = Cart.getCart(session);
%>
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
                <form id="formSignIn">
                    <div class="form-group">
                        <label for="exampleInputFullname">Họ tên*</label>
                        <input type="name" name="fullname" class="form-control" id="exampleInputFullname1"
                               aria-describedby="nameHelp" placeholder="Họ và tên">
                        <span id="signInFormFullnameErr" class="error"></span>
                    </div>
                    <div class="form-group" id="example">
                        <label for="exampleInputEmail1">Email</label>
                        <input type="email" name="email" class="form-control" id="exampleInputEmail1"
                               aria-describedby="emailHelp" placeholder="Email">
                        <span id="signInFormEmailErr" class="error"></span>
                    </div>
                    <!-- <div class="form-group" >
                    <label for="exampleInputPhone">Số điện thoại</label>
                    <input type="phone" class="form-control" id="exampleInputPhone" aria-describedby="phoneHelp" placeholder="Số điện thoại">
                </div> -->
                    <div class="form-group">
                        <label for="exampleInputFullname">Tên đăng nhập</label>
                        <input type="name" name="username" class="form-control" id="exampleInputFullname"
                               aria-describedby="nameHelp" placeholder="Tên đăng nhập">
                        <span id="signInFormUsernameErr" class="error"></span>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Mật khẩu</label>
                        <input type="password" name="password" class="form-control" id="exampleInputPassword1"
                               placeholder="Mật khẩu">
                        <small id="emailHelp" class="form-text text-muted">Bạn đừng để ai nhìn thấy mật khẩu
                            nhé!</small>
                        <span id="signInFormPassErr" class="error"></span>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword2">Nhập lại mật khẩu</label>
                        <input type="password" name="confirmpass" class="form-control" id="exampleInputPassword2"
                               placeholder="Nhập lại mật khẩu">
                        <span id="signInFormConfirmPassErr" class="error"></span>
                    </div>
                    <div class="form-group form-check" style="float: right;">
                        <button onclick="document.getElementById('id01').style.display='none'"><a href="#"
                                                                                                  data-toggle="modal"
                                                                                                  data-target="#exampleModal">Đăng
                            nhập</a></button>

                    </div>
                    <div style="text-align: center;">
                        <button onclick="handleSignIn(event)" class="btn btn-primary"
                                style="width: 50%; height: 50px; border-radius: 25px; outline: 0px;">Gửi
                        </button>
                        <br>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>
<!-- End form sign up -->

<!-- form login-->
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
                <form id="loginForm">
                    <div class="form-group" id="example1">
                        <label for="exampleInputEmail1">Tên đăng nhập hoặc email</label>
                        <input name="username" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp"
                               placeholder="Tên đăng nhập hoặc email">
                        <span id="loginFormUsernameErr" class="error"></span>
                        <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Mật khẩu</label>
                        <input name="password" type="password" class="form-control" id="exampleInputPassword"
                               placeholder="Mật khẩu">
                        <span id="loginFormPasswordErr" class="error"></span>
                    </div>

                    <div class="form-group form-check">
                        <!-- <input type="checkbox" class="form-check-input" id="exampleCheck1"> -->
                        <div style="text-align: right;margin-top: -5px;font-size: 12px;">
                            <a href="forgot.jsp">Quên mật khẩu?</a><br>
                        </div>
                        <div style="text-align: center;">
                            <button onclick="handleLogin(event)" class="btn btn-primary"
                                    style="width: 50%; height: 50px; border-radius: 25px; outline: 0px;">Đăng
                                nhập
                            </button>
                            <br>
                        </div>
                        <div style="margin-bottom:-10px; margin-top: 15px; text-align: center;">
                            Bạn chưa có tài khoản?
                            <button onclick="document.getElementById('id01').style.display='block'"><a href="#"
                                                                                                       data-toggle="modal"
                                                                                                       data-target="#exampleModal">Đăng
                                ký</a></button>
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
            <ul id="topLinks" class="header-links pull-right">
                <%
                    if (user == null) {%>
                <li><a href="#" data-toggle="modal" data-target="#id01"><i class="fa fa-user-o"></i>Đăng ký</a>
                </li>
                <li><a href="#" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-user-o"></i>Đăng
                    nhập</a></li>
                <%} else {%>
                <li><a href="<%=Utils.fullPath("account")%>"><i class="fa fa-user-o"></i>
                        <%=user.getFullname()%>
                <li><a href="<%=Utils.fullPath("logout")%>"><i class="fa fa-user-o"></i>Đăng xuất
                </a></li>
                <%}%>
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
                        <a href="<%=Utils.fullPath("")%>" class="logo">
                            <img src="<%=Utils.fullPath("img/logo.png")%>" alt="">
                        </a>
                    </div>
                </div>
                <!-- /LOGO -->

                <!-- SEARCH BAR -->
                <div class="col-md-6">
                    <div class="header-search">
                        <form>
                            <input class="input" placeholder="Tìm kiếm ở đây...">
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
                        <div>
                        <a href="cart">
                            <i class="fa fa-shopping-cart"></i>
                            <span>Giỏ hàng</span>
                            <div class="qty"><%=cartItems.quantity()%></div>
                        </a>
                        </div>
                        <div class="dropdown">


                            <div class="cart-dropdown">
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

<!-- VERTICAL MENU -->
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
                        <li><a href="<%=Utils.fullPath("")%>">Trang chủ</a></li>
                        <li><a href="<%=Utils.fullPath("selling.jsp")%>">Bán chạy</a></li>
                        <li><a href="<%=Utils.fullPath("discount.jsp")%>">Khuyến mãi</a></li>
                        <li><a href="new.jsp">Mới</a></li>
                        <li><a href="storeIntroduced.jsp">Giới thiệu</a></li>
                        <li><a href="blog.jsp">Blog</a></li>
                        <li><a href="contact.jsp">Liên hệ</a></li>
                    </ul>
                    <!-- /NAV -->
                </div>
                <!-- /responsive-nav -->
            </div>
            <!-- /container -->
        </nav>
        <!-- /NAVIGATION -->
    </div>
</div>

<script>
    // LOGIN
    function handleLogin(e) {
        // chặn sự kiện submit
        e.preventDefault();
        const formData = $('form[id="loginForm"]');
        const data = formData.serialize();
        console.log("data", data)
        const loginForm = $("#loginForm");
        const username = $(loginForm).find("#loginFormUsernameErr");
        const pass = $(loginForm).find("#loginFormPasswordErr");
        username.html("");
        pass.html("");
        $.ajax({
            type: "post",
            url: 'login',
            data,
            // dataType: return
            // dataType: "application/json",
            headers: {
                Accept: "application/json; charset=utf-8"
            },
            error: function (err) {
                if (err.responseText) {
                    // convert text to JSON
                    const obj = $.parseJSON(err.responseText);
                    console.log("username", obj.username)
                    console.log("password", obj.password)


                    username.html(obj.username);
                    pass.html(obj.password);
                    // show lỗi trên HTML
                }
            },
            success: function () {
                // Tắt modal login
                $('#exampleModal').modal('toggle')
                // reload page
                $('#topLinks').load(location.href + " #topLinks");
                // var obj = $.parseJSON(data);
            }
        });
    }

    //SIGNIN

    function handleSignIn(e) {
        // chặn sự kiện submit
        e.preventDefault();
        const formData = $('form[id="formSignIn"]');
        const data = formData.serialize();
        console.log("formData", formData)
        console.log("data", data)
        const signInForm = $("#formSignIn");
        const fullName = $(signInForm).find("#signInFormFullnameErr");
        const email = $(signInForm).find("#signInFormEmailErr");
        const username = $(signInForm).find("#signInFormUsernameErr");
        const password = $(signInForm).find("#signInFormPassErr");
        const confirmPass = $(signInForm).find("#signInFormConfirmPassErr");
        fullName.html("");
        email.html("");
        username.html("");
        password.html("");
        confirmPass.html("");
        $.ajax({
            type: "post",
            url: 'signin',
            data,
            // dataType: return
            // dataType: "application/json",
            headers: {
                Accept: "application/json; charset=utf-8"
            },
            error: function (err) {
                if (err.responseText) {
                    // convert text to JSON
                    const obj = $.parseJSON(err.responseText);
                    console.log("fullname", obj.fullname)
                    console.log("email", obj.email)
                    console.log("username", obj.username)
                    console.log("password", obj.password)

                    username.html(obj.username);
                    fullName.html(obj.fullname);
                    email.html(obj.email);
                    password.html(obj.password);
                    confirmPass.html(obj.confirmpass);
                    // show lỗi trên HTML
                }
            },
            success: function () {
                // Tắt modal login
                $("#id01").modal('toggle')
                // show prop up
                // var obj = $.parseJSON(data);
            }
        });
    }
</script>
