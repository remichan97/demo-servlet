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
        <table border="1">
            <tr>
                <td>Product ID</td>
                <td><%= p.getId() %></td>
            </tr>
            <tr>
                <td>Name</td>
                <td><%= p.getPname() %></td>
            </tr>
            <tr>
                <td>Description</td>
                <td><%= p.getPdesc() %></td>
            </tr>
            <tr>
                <td>Price</td>
                <td><%= p.getPrice() %></td>
            </tr>
            <tr>
                <td>Image</td>
                <td><%= p.getImage() %></td>
            </tr>
        </table>
        <a href="/lab9/ProductServlet">Go back</a>
    </body>
</html>
