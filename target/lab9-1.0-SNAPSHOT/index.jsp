<%@page import="java.util.List"%>
<%@page import="com.aptech.demo.lab9.entity.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Product Listing</h1>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Price</th>
                <th>Details</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>

            <%
                List<Product> products = (List<Product>) request.getAttribute("products");
                for (Product p : products) {
            %>
            <tr>
                <td><%= p.getId() %></td>
                <td><%= p.getPname() %></td>
                <td><%= p.getPrice() %></td>
                <td><a href="/lab9/ProductDetailsServlet?id=<%= p.getId() %>">Detail</a></td>
                <td><a href="/lab9/EditProductServlet?id=<%= p.getId() %>">Edit</a></td>
                <td><a href="/lab9/DeleteProductServlet?id=<%= p.getId() %>">Delete</a></td>
            </tr>
            <%
                }
            %>
        </table>
        <a href="/lab9/add.jsp">Add new Item</a>
    </body>
</html>
