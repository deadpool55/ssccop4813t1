<%-- 
    Document   : deleteProduct
    Created on : Oct 9, 2014, 7:13:19 PM
    Author     : Heather
--%>

<!DOCTYPE html>
<%@page import="data.ProductIO"%>
<%@page import="business.Product"%>
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
        <h1>Are you sure you want to delete this product? </h1>  
        <label>Code: <%= product.getCode()%></label>  
        <label>Product Description: <%= product.getDescription()%></label>  
        <label>Product Price: <%= product.getPrice()%></label>  
        <form action="<%= response.encodeURL("products.jsp?deleteCode="+product.getCode())%>" method="post">  
    <input type="submit" name="view" value="Yes"> </form>  
    <form action="<%= response.encodeURL("products.jsp")%>" method="post">  
    <input type="submit" name="view" value="No"> </form> 
    </body>  
</html>  
