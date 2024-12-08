<%-- 
    Document   : add
    Created on : 8 Dec 2024, 14.55.32
    Author     : Faiqm
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new barang</title>
</head>
<body>
<form action = "/Modul13JDBC/barang" method="post">
    <input required type="text" name="nama" placeholder="nama">
    <input required type="text" name="harga" placeholder="harga">
    <input required type="text" name="stok" placeholder="stok">
    <input type="submit" value="Save">
</form>
</body>
</html>
