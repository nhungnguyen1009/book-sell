<%--
  Created by IntelliJ IDEA.
  User: PHUONG ANH
  Date: 1/24/2021
  Time: 12:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CKEDITOR</title>
    <script type="text/javascript" src="<%=request.getContextPath()%>/Libraries/ckeditor/ckeditor.js"></script>
</head>

<body>
    <form action="" method="post">
        <textarea rows="20" cols="20" id="editor"></textarea>
        <input type="submit" name="submit" value="submit"/>
    </form>
<script>
    CKEDITOR.replace('editor');
</script>
</body>
</html>
