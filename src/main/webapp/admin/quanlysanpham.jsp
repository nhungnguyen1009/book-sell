<%@ page import="nlu.edu.fit.bookstore.model.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
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
    ArrayList<Product> products = (ArrayList<Product>) request.getAttribute("listProduct");
%>
        <!-- ============================================================== -->
        <!-- main wrapper -->
        <!-- ============================================================== -->
        <div class="dashboard-main-wrapper">
            <!-- ============================================================== -->
            <!-- navbar -->
            <!-- ============================================================== -->
            <%@include file="header.jsp" %>
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
                                <h3 class="mb-2">Tổng quan sản phẩm </h3>
                                <p class="pageheader-text">Lorem ipsum dolor sit ametllam fermentum ipsum eu porta consectetur adipiscing elit.Nullam vehicula nulla ut egestas rhoncus.</p>
                                <div class="page-breadcrumb">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Sản phẩm</a>
                                            </li>
                                            <li class="breadcrumb-item active" aria-current="page">Quản lý sản phẩm</li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Nội dung cần chèn-->
                    <div class="row">
                        <!-- ============================================================== -->
                        <!-- data table multiselects  -->
                        <!-- ============================================================== -->
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h5 class="mb-0">Danh sách sản phẩm </h5>
                                    <!-- <p>This example shows DataTables and the Select extension being used with Bootstrap 4 providing the styling.</p> -->
                                </div>
                                <div class="float2">

                                    <label>
                                Search:
                                <input type="search" class="form-control form-control-sm" placeholder=""
                                       aria-controls="DataTables_Table_0">
                            </label>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table id="example3" class="table table-striped table-bordered" style="width:100%">
                                            <thead>
                                                <tr>
                                                    <th>Mã sản phẩm</th>
                                                    <th>Tên sản phẩm</th>
                                                    <th>Hình ảnh</th>
                                                    <th>Giá gốc</th>
                                                    <th>Giá bán</th>
                                                    <th>Số lượng</th>
                                                    <th>Mã tác giả</th>
                                                    <th>Thể loại</th>
                                                    <th>Mô tả</th>
                                                    <th>Thao tác</th>


                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%

                                        for (Product p : products ) {%>
                                                    <tr>
                                                        <td>
                                                            <%=p.getId()%>
                                                        </td>
                                                        <td>
                                                            <%=p.getName()%>
                                                        </td>
                                                        <td>
                                                            <%=p.getImg()%>
                                                        </td>
                                                        <td>
                                                            <%=p.getPriceSale()%>
                                                        </td>
                                                        <td>
                                                            <%=p.getPrice()%>
                                                        </td>
                                                        <td>
                                                            <%=p.getQuantity()%>
                                                        </td>
                                                        <td>
                                                            <%=p.getIdAuthor()%>
                                                        </td>
                                                        <td>
                                                            <%=p.getCategory()%>
                                                        </td>
                                                        <td>
                                                            <%=p.getDescription()%>
                                                        </td>
                                                        <td>
                                                            <a href="<%=Utils.fullPathAdmin("product/edit")%>?id=<%=p.getId()%>">Sửa</a>
                                                            <a href="<%=Utils.fullPathAdmin("product/ProccessDelProduct")%>?id=<%=p.getId()%>">Xóa</a>
                                                        </td>
                                                    </tr>
                                                    <%}%>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- ============================================================== -->
                        <!-- end data table multiselects  -->
                        <!-- ============================================================== -->
                    </div>
                </div>


                <!-- </div> -->
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