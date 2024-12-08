<%-- 
    Document   : view
    Created on : 8 Dec 2024, 14.55.47
    Author     : Faiqm
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="models.Barang" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List Barang</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container my-5">
        <h2 class="text-center mb-4">Barang List</h2>

        <% List<Barang> daftarBarang = (List<Barang>) request.getAttribute("barang"); %>
        <% if (daftarBarang == null || daftarBarang.isEmpty()) { %>
            <div class="alert alert-warning text-center">No barang found yet.</div>
        <% } else { %>
            <table class="table table-bordered table-hover text-center">
                <thead class="table-dark">
                    <tr>
                        <th>ID</th>
                        <th>Nama</th>
                        <th>Harga</th>
                        <th>Stok</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (Barang barang : daftarBarang) { %>
                        <tr>
                            <td><%= barang.getId() %></td>
                            <td><%= barang.getNama() %></td>
                            <td><%= barang.getHarga() %></td>
                            <td><%= barang.getStok() %></td>
                            <td>
                                <div class="d-flex justify-content-center gap-2">
                                    <form action="product/edit.jsp" method="post" class="d-inline">
                                        <input type="hidden" name="id" value="<%= barang.getId() %>">
                                        <input type="hidden" name="nama" value="<%= barang.getNama() %>">
                                        <input type="hidden" name="harga" value="<%= barang.getHarga() %>">
                                        <input type="hidden" name="stok" value="<%= barang.getStok() %>">
                                        <button type="submit" class="btn btn-warning btn-sm">Edit</button>
                                    </form>
                                    <form action="product/delete.jsp" method="post" class="d-inline">
                                        <input type="hidden" name="id" value="<%= barang.getId() %>">
                                        <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                                    </form>
                                </div>
                            </td>
                        </tr>
                    <% } %>
                </tbody>
            </table>
        <% } %>

        <div class="text-center mt-4">
            <a href="product/add.jsp" class="btn btn-success">Tambah Barang Baru</a>
        </div>
    </div>

    <!-- Bootstrap JS (Optional for some features) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
