<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 7/26/2024
  Time: 10:11 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<a href="/product?action=VIEWADD" class="btn btn-primary">Thêm mới sản phẩm</a>
<form action="/product" method="post">
    <input type="text" name="search" placeholder="search...">
    <input type="submit" value="SEARCH" name="action">
</form>
<table class="table">
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Stock</th>
        <th>Category</th>
        <th>Status</th>
        <th colspan="3" >Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${products}" var="d">
        <tr>
            <td scope="row">${d.id}</td>
            <td>${d.name}</td>
            <td>${d.price}</td>
            <td>${d.stock}</td>
            <td>${d.category}</td>
            <td>${d.status}</td>
            <td>
                <a href="/product?action=VIEWEDIT&id=${d.id}" class="btn btn-warning">EDIT</a>
            </td>
            <td>
                <a href="" class="btn btn-secondary">Detail</a>
            </td>
            <td>
                <a href="/product?action=DELETE&id=${d.id}" class="btn btn-danger">Delete</a>
            </td>
        </tr>
    </c:forEach>


    </tbody>
</table>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>
