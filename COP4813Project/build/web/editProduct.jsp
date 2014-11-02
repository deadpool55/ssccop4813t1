<%-- 
    Document   : editProduct
    Created on : Oct 9, 2014, 8:13:40 PM / Modified Custom Tag 11/2/2014 3:44 PM
    Author     : Heather
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="data.ProductIO"%>
<%@page import="business.Product"%>
<%@taglib prefix = "mma" uri= "/WEB-INF/tlds/music.tld" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="main.css" type="text/css"> 
        <title>Product Maintenance</title>
    </head>
    <body>
        <%
            String productCode = request.getParameter("productCode");
            ServletContext sc = this.getServletContext();
            String productPath = sc.getRealPath("WEB-INF/products.txt");
            ProductIO productdb = new ProductIO();
            productdb.init(productPath);
            Product product = productdb.selectProduct(productCode);
            
        %>
        <p> <mma:ifEmptyMark color="red" field= ""/> marks required fields</p>
        <h1>Edit the product below:</h1>
        <form action="<%= response.encodeURL("products.jsp")%>" method="post">  
        <label>Code: </label> <input name="editCode" type='text' value=<%= product.getCode()%> <br>
        <label>Product Description: </label> <input name="newDescription" type='text'>
        <mma:ifEmptyMark color="red" field=""/><br>
        <label>Product Price: </label> <input name="newPrice" type='text'>
        <mma:ifEmptyMark color="red" field=""/><br>
        <input type="submit" name="view" value="Update Product">
        </form>
    <form action="<%= response.encodeURL("products.jsp")%>" method="post">  
    <input type="submit" name="view" value="Cancel Update"> </form> 
    </body>  
</html>
