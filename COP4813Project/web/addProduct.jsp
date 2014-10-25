<%-- 
    Document   : addProduct
    Created on : Oct 9, 2014, 7:12:24 PM
    Author     : Heather
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>  
    <head>  
        <meta charset="utf-8">
        <link rel="stylesheet" href="main.css" type="text/css">    
        <title>Product</title>  
    </head>  
    <body>  
        <form action="addProduct.jsp" method="post">  </form>
<h1>Add product information below: </h1>
<table>  
<tr><td>Code:</td><td><input type="text" name="code" size="10"></td></tr>  
<tr><td>Description:</td><td><input type="text" name="description" size="25"></td></tr>  
<tr><td>Price:</td><td><input type="text" name="price" size="15"></td></tr>  
</table>  
<br>  
  
<form action="<%= response.encodeURL("products.jsp")%>" method="post">  
  <input type="submit" name="update" value="Add Product">  
</form>  
  
  <form action="<%= response.encodeURL("products.jsp")%>" method="post">  
  <input type="submit" name="view" value="View Products">  
</form>  
</body>  
</html> 
