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
        <link rel="stylesheet" href="main.css" type="text/css">
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
       String newDescription = request.getParameter("newDescription");
       String newPrice = request.getParameter("newPrice");
       String editCode = request.getParameter("editCode");
       String deleteCode = request.getParameter("deleteCode");
       String addCode = request.getParameter("addCode");
       if (editCode != null) {
           Product editProduct = productdb.selectProduct(editCode);
           editProduct.setDescription(newDescription);
           editProduct.setPrice(Double.parseDouble(newPrice));
           productdb.updateProduct(editProduct);
       }
       if (deleteCode != null) {
           Product deleteProduct = productdb.selectProduct(deleteCode);
           productdb.deleteProduct(deleteProduct);
       }
       if (addCode != null) {
           Product addProduct = new Product();
           addProduct.setCode(addCode);
           addProduct.setDescription(newDescription);
           addProduct.setPrice(Double.parseDouble(newPrice));
           productdb.insertProduct(addProduct);
       }
       for (business.Product item : productdb.selectProducts()) {
           %>
                <tr>
                    <td><%= item.getCode() %></td>
                    <td><%= item.getArtistName() %> - <%= item.getAlbumName() %></td>
                    <td class="right"><%= item.getPrice() %></td>
                    <td><a href="<%=response.encodeURL("editProduct.jsp?productCode="+item.getCode())%>">Edit</a></td>
                    <td><a href="<%=response.encodeURL("deleteProduct.jsp?productCode="+item.getCode())%>">Delete</a></td>
                </tr>
           <%
       }
    %>
    
</table>
        <form action="<%= response.encodeURL("addProduct.jsp")%>" method="post">  
            <input type="submit" name="add" value="Add Product"> </form>
           </body>
</html>
