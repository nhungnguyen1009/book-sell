<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.nlu.fit.booksell.model.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>About page</title>
</head>
<body>
<h2>About page</h2>
<% ArrayList<Product> aList = (ArrayList<Product>) request.getAttribute("listdata");
%>
<div class="container">

<% for (Product item : aList) { %>
    <div class="row">
<div class="row-sm-6">
    <div>
        <img style="width: 300px" src= "<%=item.getUrl()%>" alt="ip11">
    </div>
    <div class="card-title">
        <h3><%=item.getName()%></h3>
    </div>
    <div class="card-content"><%=item.getContent()%></div>
</div>
    </div>
<%}%>
</div>
</body>
</html>
