<%-- 
    Document   : delete
    Created on : 8 Dec 2024, 18.33.10
    Author     : Faiqm
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete barang</title>
</head>
<body>

Apakah anda yakin untuk menghapus barang-${param.id}?

<form action="/Modul13JDBC/barang" method="post">
    <input type="hidden" name="id" value="${param.id}">
    <input type="hidden" name="_method" value="delete">
    <input type="submit" value="Delete">
</form>

</body>
</html>
