<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 9/16/2023
  Time: 7:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Danh sách học sinh</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1 class="text-danger">${param.message}</h1>
    <a href="student?action=create" class="btn btn-primary">Thêm mới</a>

    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Tên</th>
            <th scope="col">Điểm</th>
            <th scope="col">Xếp loại</th>
            <th scope="col">Chỉnh sửa</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="student" items="${studentList}" varStatus="loop">
            <tr>
                <th scope="row">${loop.count}</th>
                <td>${student.name}</td>
                <td>${student.score}</td>
                <td>
                    <c:if test="${student.score < 5}">
                        <p class="text-danger">Yếu</p>
                    </c:if>

                    <c:if test="${student.score >= 5 && student.score < 7}">
                        <p>Bình thường</p>
                    </c:if>

                    <c:if test="${student.score >= 7}">
                        <p class="text-info">Tốt</p>
                    </c:if>
                </td>
                <td><a href="student?action=edit&id=${student.id}" class="btn btn-info">Chỉnh sửa</a></td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>
</body>
</html>
