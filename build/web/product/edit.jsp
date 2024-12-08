<%-- 
    Document   : edit
    Created on : 8 Dec 2024, 14.55.41
    Author     : Faiqm
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modify Barang</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="p-4 border rounded-3 shadow" style="background-color: #f8f9fa; width: 100%; max-width: 400px;">
            <h2 class="text-center mb-4">Edit Barang</h2>
            <form action="/Modul13JDBC/barang" method="post">
                <input type="hidden" name="id" value="${param.id}">
                <div class="mb-3">
                    <label for="nama" class="form-label">Nama</label>
                    <input required type="text" id="nama" name="nama" class="form-control" value="${param.nama}" placeholder="${param.nama}">
                </div>
                <div class="mb-3">
                    <label for="harga" class="form-label">Harga</label>
                    <input required type="text" id="harga" name="harga" class="form-control" value="${param.harga}" placeholder="${param.harga}">
                </div>
                <div class="mb-3">
                    <label for="stok" class="form-label">Stok</label>
                    <input required type="text" id="stok" name="stok" class="form-control" value="${param.stok}" placeholder="${param.stok}">
                </div>
                <input type="hidden" name="_method" value="put">
                <div class="d-grid">
                    <button type="submit" class="btn btn-success">Update</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS (Optional for some features) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

