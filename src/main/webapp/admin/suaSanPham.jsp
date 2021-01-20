<%@ page import="nlu.edu.fit.bookstore.utils.Utils" %><%--
  Created by IntelliJ IDEA.
  User: PHUONG ANH
  Date: 1/19/2021
  Time: 2:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href=<%=Utils.fullPathAdmin("assets/libs/css/sua.css")%>>
    <title>Title</title>
</head>
<div class="flex">

 <div>
     <div class="label"><label>Tên</label></div>
     <div class="label"><label>Hình ảnh</label></div>
     <div class="label"><label>Giá gốc</label></div>
     <div class="label"><label>Giá bán</label></div>
     <div class="label"><label>Số lượng</label></div>
     <div class="label"><label>Tên tác giả</label></div>
     <div class="label"><label>Thể loại</label></div>
</div>
 <div>

     <div><input type="text" id="1" name="name" placeholder="nhập vào tên" value="<%
     ServletContext context2= request.getServletContext();
     System.out.println(context2.getAttribute("name"));
     %>"></div>
     <div><input type="text" name="img"placeholder="nhập url hình ảnh" value="<%
     ServletContext context3= request.getServletContext();
     System.out.println(context3.getAttribute("url"));
     %>"></div>
     <div><input type="text" name="price" placeholder="nhập giá gốc" value="<%
     ServletContext context4= request.getServletContext();
     System.out.println(context4.getAttribute("price"));
     %>"></div>
     <div><input type="text" name="priceSale" placeholder="nhập giá bán" value="<%
     ServletContext context5= request.getServletContext();
     System.out.println(context5.getAttribute("priceSale"));
     %>"></div>
     <div><input type="text" name="quantity" placeholder="nhập số lượng" value="<%
     ServletContext context6= request.getServletContext();
     System.out.println(context6.getAttribute("quantity"));
     %>"></div>
     <div><input type="text" name="author" placeholder="nhập tên tác giả" value="<%
     ServletContext context7= request.getServletContext();
     System.out.println(context7.getAttribute("author"));
     %>"></div>
     <div><input type="text" name="category" placeholder="nhập thể loại" value="<%
     ServletContext context8= request.getServletContext();
     System.out.println(context8.getAttribute("category"));
     %>"></div>
     <div><button type="submit">Sửa</button></div>
 </div>

</div>

</body>
</html>
