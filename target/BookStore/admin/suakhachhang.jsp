<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">


<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <%@include file="css.jsp"%>
    <title>Trang quản lý Admin</title>
</head>

<body>
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
        <!-- ============================================================== -->
        <!-- navbar -->
        <!-- ============================================================== -->
        <%@include file="header.jsp"%>
        <!-- ============================================================== -->
        <!-- end navbar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- left sidebar -->
        <!-- ============================================================== -->
        <%@include file="menuLeft.jsp"%>
        <!-- ============================================================== -->
        <!-- end left sidebar -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- wrapper  -->
        <!-- ============================================================== -->
        <div class="dashboard-wrapper">
            <div class="container-fluid  dashboard-content">
                <!-- ============================================================== -->
                <!-- pagehader  -->
                <!-- ============================================================== -->

                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">Sửa khách hàng</h3>
                    </div>
                    <!-- /.card-header -->
                    <!-- form start -->
                    <form action=<%=Utils.fullPath("admin/user/edit")%> method="POST" >

                        <!-- $csrf -->
                        <!-- remember form needs enctype="multipart/form-data" and {{ csrf_field() }} -->
                        <div class="card-body">
                            <div class="form-group">
                                <label for="exampleInputPassword1">Mã</label>
                                <input type="number" name="id" class="form-control" placeholder="Mã" required>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Tên user</label>
                                <input type="text" name="username" class="form-control" placeholder="Tên tài khoản" required>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Họ và tên</label>
                                <input type="text" name="fullname" class="form-control" placeholder="Họ tên" required>
                            </div>
                            <div class="form-group">
                                <label >SĐT hoặc Email</label>
                                <div class="input-group">
                                    <input type="text" name="email" class="form-control"  placeholder="SĐT hoặc Email" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Mật khẩu</label>
                                <input type="text" name="pass" class="form-control"  placeholder="Mật khẩu" required>
                            </div>
                            <div class="form-group">
                                <label>Địa chỉ</label>
                                <div class="input-group">
                                    <input type="text" name="address" class="form-control" placeholder="Địa chỉ" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Giới tính</label>
                                <div class="input-group">
                                    <input type="text" name="sex" class="form-control" id="exampleInputPassword1" placeholder="Giới tính" required>
                                </div>
                            </div>

                        </div>
                        <!-- /.card-body -->

                        <div class="card-footer">
                            <button type="submit" class="btn btn-primary">Sửa</button>
                        </div>
                    </form>
                </div>


            </div>
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <%@include file="footer.jsp"%>
            <!-- ============================================================== -->
            <!-- end footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- end wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper  -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <!-- jquery 3.3.1 js-->
    <script src="assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <!-- bootstrap bundle js-->
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <!-- slimscroll js-->
    <script src="assets/vendor/slimscroll/jquery.slimscroll.js"></script>
    <!-- chartjs js-->
    <script src="assets/vendor/charts/charts-bundle/Chart.bundle.js"></script>
    <script src="assets/vendor/charts/charts-bundle/chartjs.js"></script>

    <!-- main js-->
    <script src="assets/libs/js/main-js.js"></script>
    <!-- jvactormap js-->
    <script src="assets/vendor/jvectormap/jquery-jvectormap-2.0.2.min.js"></script>
    <script src="assets/vendor/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <!-- sparkline js-->
    <script src="assets/vendor/charts/sparkline/jquery.sparkline.js"></script>
    <script src="assets/vendor/charts/sparkline/spark-js.js"></script>
    <!-- dashboard sales js-->
    <script src="assets/libs/js/dashboard-sales.js"></script>
</body>

</html>