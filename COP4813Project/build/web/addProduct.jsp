<%-- 
    Document   : addProduct
    Created on : Oct 9, 2014, 7:12:24 PM / Modified 11/2/2014 3:37 PM
    Author     : Heather
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "mma" uri= "/WEB-INF/tlds/music.tld" %>
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
<p> <mma:ifEmptyMark color="red" field= ""/> marks required fields</p>
<form action="<%= response.encodeURL("products.jsp")%>" method="post"> 
<table>  
   
<tr><td>Code:</td><td><input type="text" name="addCode" size="10"> <mma:ifEmptyMark color="red" field=""/><br></td></tr>  
<tr><td>Description:</td><td><input type="text" name="newDescription" size="25"> <mma:ifEmptyMark color="red" field=""/><br></td></tr>  
<tr><td>Price:</td><td><input type="text"  name="newPrice" size="15"> <mma:ifEmptyMark color="red" field=""/><br></td></tr>  
</table>  
<br>  
  
 
  <input type="submit" name="update" value="Add Product">  
</form>  
  
  <form action="<%= response.encodeURL("products.jsp")%>" method="post">  
  <input type="submit" name="view" value="View Products">  
</form>  
</body>  
</html> 
