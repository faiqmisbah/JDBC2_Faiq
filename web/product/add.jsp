<%-- 
    Document   : add
    Created on : 8 Dec 2024, 14.55.32
    Author     : Faiqm
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Masukkan Barang Baru</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="p-4 border rounded-3 shadow" style="background-color: #f8f9fa; width: 100%; max-width: 400px;">
            <h2 class="text-center mb-4">Masukkan Barang Baru</h2>
            <form action="/Modul13JDBC/barang" method="post">
                <div class="mb-3">
                    <input required type="text" name="nama" class="form-control" placeholder="Nama">
                </div>
                <div class="mb-3">
                    <input required type="text" name="harga" class="form-control" placeholder="Harga">
                </div>
                <div class="mb-3">
                    <input required type="text" name="stok" class="form-control" placeholder="Stok">
                </div>
                <div class="d-grid">
                    <button type="submit" class="btn btn-success">Simpan</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS (Optional for some features) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

