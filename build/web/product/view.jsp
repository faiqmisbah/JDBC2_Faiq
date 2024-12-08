<%-- 
    Document   : view
    Created on : 8 Dec 2024, 14.55.47
    Author     : Faiqm
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="models.Barang" %>
<html>
<head>
    <title>Barang list</title>
</head>
<body>

<%
List<Barang> daftarBarang = (List<Barang>) request.getAttribute("barang");
if (daftarBarang == null || daftarBarang.isEmpty()) {
%>
    <p>No barang found yet.</p>
<%
} else {
%>
    <table border="2">
        <tr>
            <td>ID</td>
            <td>Nama</td>
            <td>Harga</td>
            <td>Stok</td>
        </tr>
        <%
        for (Barang barang : daftarBarang) {
        %>
            <tr>
                <td><%= barang.getId() %></td>
                <td><%= barang.getNama() %></td>
                <td><%= barang.getHarga() %></td>
                <td><%= barang.getStok() %></td>
                <td>
                    <form action="product/edit.jsp" method="post">
                        <input type="hidden" name="id" value="<%= barang.getId() %>">
                        <input type="hidden" name="nama" value="<%= barang.getNama() %>">
                        <input type="hidden" name="harga" value="<%= barang.getHarga() %>">
                        <input type="hidden" name="stok" value="<%= barang.getStok() %>">
                        <input type="submit" value="Edit" style="float:left">
                    </form>
                    <form action="product/delete.jsp" method="post">
                        <input type="hidden" name="id" value="<%= barang.getId() %>">
                        <input type="submit" value="Delete" style="float:left">
                    </form>
                </td>
            </tr>
        <%
        }
        %>
    </table>
<%
}
%>

<form action="product/add.jsp">
    <input type="submit" value="Add new barang">
</form>
</body>
</html>
