<%-- 
    Document   : index
    Created on : 8 Dec 2024, 14.39.59
    Author     : Faiqm
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Barang</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="text-center p-5 border rounded-3 shadow" style="background-color: #f8f9fa;">
            <h1 class="mb-4">Data Barang</h1>
            <p class="card-text text-muted mb-5">Kelola data barang Anda dengan mudah</p>
            <form action="/Modul13JDBC/barang" method="get">
                <button type="submit" class="btn btn-success">Klik Disini!! </button>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS (Optional for some features) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

