<%-- 
    Document   : add
    Created on : 25 May 2022, 22:20:18
    Author     : binht
--%>

<%@page import="com.aptech.demo.lab9.entity.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Edit Product!</h1>
        <%
            Product p = (Product) request.getAttribute("p");
        %>
        <form action="/lab9/SaveProductServlet" method="post">
            Name: <input type="hidden" name="id" value = "<%= p.getId() %>"/> <br/>
            Name: <input type="text" name="pname" value = "<%= p.getPname() %>"/> <br/>
            Desc: <input type="text" name="pdesc" value = "<%= p.getPdesc() %>"/> <br/>
            Price: <input type="text" name="price" value = "<%= p.getPrice() %>"/> <br/>
            Image: <input type="file" name="image" value = "<%= p.getImage() %>"/> <br/>
            <input type="submit">
        </form>
    </body>
</html>
