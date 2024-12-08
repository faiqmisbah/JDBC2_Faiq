<%-- 
    Document   : delete
    Created on : 8 Dec 2024, 18.33.10
    Author     : Faiqm
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Barang</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="p-4 border rounded-3 shadow text-center" style="background-color: #f8f9fa; width: 100%; max-width: 400px;">
            <h2 class="mb-4">Delete Barang</h2>
            <p class="mb-4">Apakah anda yakin untuk menghapus barang dengan ID <strong>${param.id}</strong>?</p>
            <form action="/Modul13JDBC/barang" method="post">
                <input type="hidden" name="id" value="${param.id}">
                <input type="hidden" name="_method" value="delete">
                <div class="d-flex justify-content-around">
                    <button type="submit" class="btn btn-danger">Delete</button>
                    <a href="/Modul13JDBC/barang" class="btn btn-secondary">Cancel</a>
                </div>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS (Optional for some features) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

