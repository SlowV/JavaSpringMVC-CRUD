<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!doctype html >
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <%--Link css--%>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">

    <title>Trang chu</title>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-md-8 offset-md-2 mt-2">
            <c:choose>
                <c:when test="${listEmployee.size() != 0}">
                    <table class="table">
                        <thead class="thead-dark">
                        <tr>
                            <th scope="col">Name</th>
                            <th scope="col">Email</th>
                            <th scope="col">Address</th>
                            <th scope="col">Telephone</th>
                            <th scope="col">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="employee" items="${listEmployee}">
                            <tr>
                                <td>${employee.name}</td>
                                <td>${employee.email}</td>
                                <td>${employee.address}</td>
                                <td>${employee.telephone}</td>
                                <td>
                                    <a href="editEmployee?id=${employee.id}" class="mr-2">Edit</a>
                                    <a href="deleteEmployee?id=${employee.id}">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </c:when>
                <c:otherwise>
                    <spring:url value="/newEmployee" var="newEmployee"/>
                    Hien chua co nhan vien nao <a href="/newEmployee">An day</a> de them moi nhan vien.
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</div>

<script src="/resources/js/jquery-3.3.1.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        alert("Hello SlowV");
    });
</script>
</body>
</html>
