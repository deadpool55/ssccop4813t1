<%-- 
    Document   : products
    Created on : Oct 9, 2014, 5:34:13 PM
    Author     : Heather
--%>

<%@page import="data.ProductIO"%>
<%@page import="business.Product"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="styles/main.css" type="text/css">
        <title>Product Maintenance</title>
    </head>
    <body>
        <h1>Products</h1>
   <table>
    <tr>
        <th>Code</th>
        <th>Description</th>
        <th class="right">Price</th>
        <th>&nbsp;</th>
        <th>&nbsp;</th>
    </tr>
    <%
       ServletContext sc = this.getServletContext();
       String productPath = sc.getRealPath("WEB-INF/products.txt");
       ProductIO productdb = new ProductIO();
       productdb.init(productPath);
       
       for (business.Product item : productdb.selectProducts()) {
           %>
                <tr>
                    <td><%= item.getCode() %></td>
                    <td><%= item.getArtistName() %> - <%= item.getAlbumName() %></td>
                    <td class="right"><%= item.getPrice() %></td>
                    <td><a href="<%=response.encodeURL("editProduct.jsp")%>">Edit</a></td>
                    <td><a href="<%=response.encodeURL("deleteProduct.jsp")%>">Delete</a></td>
                </tr>
           <%
       }
    %>
    
</table>
        <form action="<%= response.encodeURL("addProduct.jsp")%>" method="post">  
            <input type="submit" name="add" value="Add Product"> </form>
           </body>
</html>
