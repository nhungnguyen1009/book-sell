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
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="page-header">
                            <h3 class="mb-2">Tổng quan nhà sản xuất </h3>
                            <p class="pageheader-text">Lorem ipsum dolor sit ametllam fermentum ipsum eu porta consectetur adipiscing elit.Nullam vehicula nulla ut egestas rhoncus.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Nhà sản xuất</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">thêm nhà sản xuất</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">Thêm nhà sản xuất</h3>
                    </div>
                    <!-- /.card-header -->
                    <!-- form start -->
                    <form action=<%=Utils.fullPath("admin/publisher/add")%> method="POST">

                        <!-- $csrf -->
                        <!-- remember form needs enctype="multipart/form-data" and {{ csrf_field() }} -->
                        <div class="card-body">
                            <div class="form-group">
                                <label>Mã nhà sản xuất</label>
                                <input type="number" name="id" class="form-control"  placeholder="Mã" required>
                            </div>
                            <div class="form-group">
                                <label>Tên nhà sản xuất</label>
                                <input type="text" name="name" class="form-control"  placeholder="Tên" required>
                            </div>
<%--                            <div class="form-group">--%>
<%--                                <label>Tác phẩm</label>--%>
<%--                                <div class="input-group">--%>
<%--                                    <input type="text" name="writing" class="form-control"  placeholder="Tác phẩm" required>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="form-group">--%>
<%--                                <label>Số lượng</label>--%>
<%--                                <div class="input-group">--%>
<%--                                    <input type="text" name="quantity" class="form-control"  placeholder="Số lượng" required>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="form-group">--%>
<%--                                <label>Tổng tiền</label>--%>
<%--                                <div class="input-group">--%>
<%--                                    <input type="text" name="total" class="form-control" id="exampleInputPassword1" placeholder="Tổng tiền" required>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                        </div>
                        <!-- /.card-body -->

                        <div class="card-footer">
                            <button type="submit" class="btn btn-primary">Thêm</button>
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