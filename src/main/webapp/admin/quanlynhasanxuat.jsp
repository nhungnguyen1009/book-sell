<%@ page import="java.util.ArrayList" %>
<%@ page import="nlu.edu.fit.bookstore.model.Publisher" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">


<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" conxtent="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <%@include file="css.jsp"%>
    <title>Trang quản lý Admin</title>
</head>

<body>
    <%
        ArrayList<Publisher>publishers=(ArrayList<Publisher>) request.getAttribute("listPublisher");
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
                            <h3 class="mb-2">Tổng quan nhà sản xuất </h3>
                            <p class="pageheader-text">Lorem ipsum dolor sit ametllam fermentum ipsum eu porta consectetur adipiscing elit.Nullam vehicula nulla ut egestas rhoncus.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Nhà sản xuất</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Quản lý nhà sản xuất</li>
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
                                <h5 class="mb-0">Danh sách nhà sản xuất </h5>
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
                                                <th>Mã nhà sản xuất</th>
                                                <th>Tên nhà sản xuất</th>
<%--                                                <th>Số lượng</th>--%>
                                                <th>Thao tác</th>


                                            </tr>
                                        </thead>
                                        <tbody>
                                        <%
                                            for(Publisher publisher: publishers){
                                        %>
                                            <tr>
                                                <td><%=publisher.getId()%> </td>
                                                <td><%=publisher.getName()%></td>
<%--                                                <td><%=publisher.getId_product()%> </td>--%>
<%--                                                <td><%=publisher.getName_product()%></td>--%>
<%--                                                <td><%=publisher.getQuantity()%></td>--%>
                                                <td>
                                                    <a href="<%=Utils.fullPathAdmin("publisher/editPublisher")%>?id=<%=publisher.getId()%>">Sửa</a>
                                                    <a href="<%=Utils.fullPathAdmin("publisher/DelPublisher")%>?id=<%=publisher.getId()%>">Xóa</a>
                                                </td>


                                            </tr>

                                           <%
                                               }
                                           %>

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
</body>

</html>