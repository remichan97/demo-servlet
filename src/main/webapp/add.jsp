<%-- 
    Document   : add
    Created on : 25 May 2022, 22:20:18
    Author     : binht
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="/lab9/AddProductServlet" method="post">
            Name: <input type="text" name="pname"/> <br/>
            Desc: <input type="text" name="pdesc"/> <br/>
            Price: <input type="text" name="price"/> <br/>
            Image: <input type="file" name="image"/> <br/>
            <input type="submit">
        </form>
    </body>
</html>
