<%-- 
    Document   : deleteProduct
    Created on : Oct 9, 2014, 7:13:19 PM
    Author     : Heather
--%>

<!DOCTYPE html>
<html>  
    <head>  
        <meta charset="utf-8">
        <link rel="stylesheet" href="styles/main.css" type="text/css">  
        <title>Product Maintenance</title>  
    </head>  
    <body>  
        <h1>Are you sure you want to delete this product? </h1>  
        <label>Code: ${product.getCode()}</label>  
        <label>Product Description: ${product.getDescription()}</label>  
        <label>Product Price: ${product.getPrice()}</label>  
        <form action="<%= response.encodeURL("products.jsp")%>" method="post">  
    <input type="submit" name="view" value="Yes"> </form>  
    <form action="<%= response.encodeURL("products.jsp")%>" method="post">  
    <input type="submit" name="view" value="No"> </form> 
    </body>  
</html>  
