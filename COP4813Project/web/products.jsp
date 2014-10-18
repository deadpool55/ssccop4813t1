<%-- 
    Document   : products
    Created on : Oct 9, 2014, 5:34:13 PM
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
        <h1>Products</h1>
   <table>
    <tr>
        <th>Code</th>
        <th>Description</th>
        <th class="right">Price</th>
        <th>&nbsp;</th>
        <th>&nbsp;</th>
    </tr>
    <tr>
        <td>8601</td>
        <td>86 (the band) - True Life Songs and Pictures</td>
        <td class="right">$14.95</td>
        <td><a href="<%=response.encodeURL("editProduct.jsp")%>">Edit</a></td>
        <td><a href="<%=response.encodeURL("deleteProduct.jsp")%>">Delete</a></td>
            </tr>
    <tr>
        <td>pf01</td>
        <td>Paddlefoot - The first CD</td>
        <td class="right">$12.95</td>
        <td><a href="<%=response.encodeURL("editProduct.jsp")%>">Edit</a></td>
        <td><a href="<%=response.encodeURL("deleteProduct.jsp")%>">Delete</a></td>
    </tr>
    <tr>
        <td>pf02</td>
        <td>Paddlefoot - The second CD</td>
        <td class="right">$14.95</td>
        <td><a href="<%=response.encodeURL("editProduct.jsp")%>">Edit</a></td>
        <td><a href="<%=response.encodeURL("deleteProduct.jsp")%>">Delete</a></td>
    </tr>
    <tr>
        <td>jr01</td>
        <td>Joe Rut - Genuine Wood Grained Finish</td>
        <td class="right">$14.95</td>
        <td><a href="<%=response.encodeURL("editProduct.jsp")%>">Edit</a></td>
        <td><a href="<%=response.encodeURL("deleteProduct.jsp")%>">Delete</a></td>
                 </tr>
</table>
        <form action="<%= response.encodeURL("addProduct.jsp")%>" method="post">  
            <input type="submit" name="add" value="Add Product"> </form>
           </body>
</html>
