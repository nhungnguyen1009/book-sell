<%@ page import="nlu.edu.fit.bookstore.model.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">


<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <%@include file="css.jsp"%>
    <%--ckfinder--%>
    <script type="text/javascript" src="<%=request.getContextPath()%>/ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/ckfinder/ckfinder.js"></script>
    <title>Trang quản lý Admin</title>
</head>

<body>
<%
    Product p= (Product) request.getAttribute("product");
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



            <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title">Sửa sản phẩm</h3>
                </div>
                <!-- /.card-header -->
                <!-- form start -->
                <form action=<%=Utils.fullPath("admin/product/edit?id="+p.getId())%> method="POST" >

                    <!-- $csrf -->
                    <!-- remember form needs enctype="multipart/form-data" and {{ csrf_field() }} -->
                    <div class="card-body">
                        <div class="form-group ">
                            <label>Mã sản phẩm</label>
                            <input value="<%=p.getId()%>" type="text" name="productID" class="form-control " placeholder="Mã " disabled>
                        </div>
                        <div class="form-group ">
                            <label>Tên sản phẩm</label>
                            <input value="<%=p.getName()%>" type="text" name="name" class="form-control " placeholder="Tên " required>
                        </div>
                        <div class="form-group ">
                            <label>Giá gốc</label>
                            <div class="input-group ">
                                <input value="<%=p.getPrice()%>" type="number" name="originPrice" class="form-control " placeholder="Giá gốc" required>
                            </div>
                        </div>
                        <div class="form-group ">
                            <label>Giá bán</label>
                            <div class="input-group ">
                                <input value="<%=p.getPriceSale()%>" type="number" name="price" class="form-control " id="exampleInputPassword1 " placeholder="Giá bán" required>
                            </div>
                        </div>
                        <div class="form-group ">
                            <label>Số lượng</label>
                            <div class="input-group ">
                                <input value="<%=p.getQuantity()%>" type="number" name="quantity" class="form-control " placeholder="Số lượng " required>
                            </div>
                        </div>
                        <div class="form-group ">
                            <label>Mã tác giả</label>
                            <div class="input-group ">
                                <input value="<%=p.getIdAuthor()%>"  type="number" name="idAuthor" class="form-control "  placeholder="Mã tác giả " required>
                            </div>

                        </div>
                        <div class="form-group ">
                            <label>Thể loại</label>
                            <div class="input-group ">
                                <input value="<%=p.getCategory()%>" type="text" name="category" class="form-control" placeholder="Thể loại " required>
                            </div>
                        </div>
                        <div class="form-group ">
                            <label>Mô tả</label>
                            <div class="input-group ">
                                <textarea name="desciption" rows="20" cols="20" id="editor"><%=p.getDescription()%></textarea>
<%--                                <input value="<%=p.getDescription()%>" type="text" name="desciption" class="form-control " placeholder="Mô tả" required>--%>
                            </div>
                        </div>
                        <div class="form-group ">
                            <label>Hinh ảnh</label>
                            <div class="input-group ">
                                <input value="<%=p.getImg()%>" type="text" name="img" class="form-control " placeholder="Hình ảnh " required>
                            </div>
                        </div>
                    </div>
                    <!-- /.card-body -->

                    <div class="card-footer ">
                        <button type="submit" class="btn btn-primary ">Sửa</button>
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
<script src="assets/vendor/jquery/jquery-3.3.1.min.js "></script>
<!-- bootstrap bundle js-->
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.js "></script>
<!-- slimscroll js-->
<script src="assets/vendor/slimscroll/jquery.slimscroll.js "></script>
<!-- chartjs js-->
<script src="assets/vendor/charts/charts-bundle/Chart.bundle.js "></script>
<script src="assets/vendor/charts/charts-bundle/chartjs.js "></script>

<!-- main js-->
<script src="assets/libs/js/main-js.js "></script>
<!-- jvactormap js-->
<script src="assets/vendor/jvectormap/jquery-jvectormap-2.0.2.min.js "></script>
<script src="assets/vendor/jvectormap/jquery-jvectormap-world-mill-en.js "></script>
<!-- sparkline js-->
<script src="assets/vendor/charts/sparkline/jquery.sparkline.js "></script>
<script src="assets/vendor/charts/sparkline/spark-js.js "></script>
<!-- dashboard sales js-->
<script src="assets/libs/js/dashboard-sales.js "></script>

<script type="text/javascript">
    var editor1 = CKEDITOR.replace('editor');
    CKFinder.setupCKEditor(editor1, '../../ckfinder');
</script>
</body>

</html>