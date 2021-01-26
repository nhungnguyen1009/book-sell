<%@ page import="nlu.edu.fit.bookstore.model.Order" %>
<%@ page import="java.util.ArrayList" %>
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
<%
    ArrayList<Order> orders = (ArrayList<Order>) request.getAttribute("listOrder");
%>
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
                            <h3 class="mb-2">Tổng quan đơn hàng </h3>
                            <p class="pageheader-text">Lorem ipsum dolor sit ametllam fermentum ipsum eu porta consectetur adipiscing elit.Nullam vehicula nulla ut egestas rhoncus.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Đơn hàng</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Quản lý đơn hàng</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <!-- ============================================================== -->
                    <!-- data table multiselects  -->
                    <!-- ============================================================== -->
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="mb-0">Danh sách đơn hàng </h5>
                                <!-- <p>This example shows DataTables and the Select extension being used with Bootstrap 4 providing the styling.</p> -->
                            </div>
                            <div class="float2">

                                <label>
                                            Search:
                                            <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="DataTables_Table_0">
                                        </label>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="example3" class="table table-striped table-bordered" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>Mã đơn hàng</th>
                                                <th>Ngày tạo</th>
<%--                                                <th>Hình thức thanh toán</th>--%>
                                                <th>Giá bán lẻ</th>
<%--                                                <th>Số lượng </th>--%>
<%--                                                <th>Tình trạng </th>--%>
                                                <th>Mã khách hàng</th>
                                                <th>Mã nhân viên</th>
                                                <th>Thao tác</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                        <%
                                            for (Order o: orders){ %>
                                        <tr>
                                            <td><%=o.getId()%></td>
                                            <td><%=o.getDate()%></td>
<%--                                            <td>Thanh toán khi nhận hàng</td>--%>
                                            <td><%=o.getPrice()%></td>
<%--                                            <td><%=o.getQuantity()%></td>--%>
<%--                                            <td>Chờ xử lý</td>--%>
                                            <td><%=o.getUser_id()%></td>
                                            <td><%=o.getStaff_id()%></td>
                                            <td>
<%--                                                <a href="#">Sẵn sàng giao</a><br/>--%>
                                                <a href="<%=Utils.fullPathAdmin("order/DelOrder")%>?id=<%=o.getId()%>">Hủy</a>
                                            </td>


                                        </tr>
                                        <%}%>


                                        </tbody>

                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
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


    <script>
        $(document).ready(function() {
            $('#example').DataTable();
        });
    </script>

</body>

</html>