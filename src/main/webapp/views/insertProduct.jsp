<%--
  Created by IntelliJ IDEA.
  User: bthai
  Date: 5/15/2024
  Time: 8:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<div class="container">
    <h1>INSERT PRODUCT</h1>
    <form:form action="insertProduct" modelAttribute="p" method="post">
        <div class="mb-3">
            <label for="proId" class="form-label">Product Id</label>
            <form:input path="proId" class="form-control" id="proId"/>
            <form:errors path="proId" cssClass="text-danger"/>
        </div>
        <div class="mb-3">
            <label for="proName" class="form-label">Product Name</label>
            <form:input path="proName" class="form-control" id="proName"/>
            <form:errors path="proName" cssClass="text-danger"/>
        </div>
        <div class="mb-3">
            <label for="producer" class="form-label">Producer</label>
            <form:input path="producer" class="form-control" id="producer"/>
            <form:errors path="producer" cssClass="text-danger"/>
        </div>
        <div class="mb-3">
            <label for="expireDate" class="form-label">Expire date</label>
            <form:input path="expireDate" class="form-control" id="expireDate" type="date"/>
            <form:errors path="expireDate" cssClass="text-danger"/>
        </div>
        <div class="mb-3">
            <label for="price" class="form-label">Price</label>
            <form:input path="price" class="form-control" id="price" type="number"/>
            <form:errors path="price" cssClass="text-danger"/>
        </div>
        <button type="submit" class="btn btn-primary">Insert</button>
        <button type="reset" class="btn btn-secondary">Clear</button>
    </form:form>
</div>
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
