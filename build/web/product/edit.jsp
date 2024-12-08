<%-- 
    Document   : edit
    Created on : 8 Dec 2024, 14.55.41
    Author     : Faiqm
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Modify Barang</title>
</head>
<body>

Edit Barang

<form action="/Modul13JDBC/barang" method="post">
    <input type="hidden" name = "id" value="${param.id}">
    <input type="text" name="nama" value="${param.nama}" placeholder=${param.nama}>
    <input type="text" name="harga" value="${param.harga}" placeholder=${param.harga}>
     <input type="text" name="stok" value="${param.stok}" placeholder=${param.stok}>
    <input type="hidden" name="_method" value="put">
    <input type="submit" value="Update">
</form>

</body>
</html>
