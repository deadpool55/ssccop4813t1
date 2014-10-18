<%-- 
    Document   : editProduct
    Created on : Oct 9, 2014, 8:13:40 PM
    Author     : Heather
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="styles/main.css" type="text/css"> 
        <title>Product Maintenance</title>
    </head>
    <body>
        <h1>Edit the product below:</h1>
        <label>Code: ${product.getCode()}</label>  
        <label>Product Description: ${product.getDescription()}</label>  
        <label>Product Price: ${product.getPrice()}</label>  
        <form action="<%= response.encodeURL("products.jsp")%>" method="post">  
    <input type="submit" name="view" value="Update Product"> </form>  
    <form action="<%= response.encodeURL("products.jsp")%>" method="post">  
    <input type="submit" name="view" value="Cancel Update"> </form> 
    </body>  
</html>
