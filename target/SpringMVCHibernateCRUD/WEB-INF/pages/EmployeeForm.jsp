<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%--Link css--%>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <title>New/Edit Contact</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-6 offset-md-4 mt-4">
            <form:form action="saveEmployee" method="post" modelAttribute="employee">
                <div class="form-group">
                    <label for="empName">Tên Nhân Viên</label>
                    <form:input path="name" cssClass="form-control" id="empName" placeholder="Tên nhân viên"/>
                </div>
                <div class="form-group">
                    <label for="empEmail">Email</label>
                    <form:input path="email" cssClass="form-control" id="empEmail" placeholder="Email"/>
                </div>
                <div class="form-group">
                    <label  for="empAddress">Địa chỉ</label>
                    <form:input path="address" id="empAddress" cssClass="form-control" placeholder="Địa chỉ nhân viên"/>
                </div>
                <div class="form-group">
                    <label  for="empPhone">Số điện thoại</label>
                    <form:input path="telephone" id="empPhone" cssClass="form-control" placeholder="Địa chỉ nhân viên"/>
                </div>
                <button type="submit" class="btn btn-outline-info">Đăng</button>
            </form:form>
        </div>
    </div>
</div>

<script src="/resources/js/jquery-3.3.1.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
</body>
</html>