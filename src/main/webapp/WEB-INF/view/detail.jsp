<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .top{
            display: flex;
            justify-content: center;
        }
    </style>
</head>
<body>
    <div class="top">
    <h1>상품 목록 페이지</h1>
</div>
    <hr>
    <div class="top">
    <table border="1px">
        <tr>
            <th>번호</th>
            <th>상품명</th>
            <th>가격</th>
            <th>재고</th>
            <th>등록일</th>
        </tr>
        <%-- 여기서 product 는 page객체에 넣어줌
        el표현식으로 page객체의 데이터를 꺼내옴  --%>
        
        <tr>
            <td>${productList.id}</td>
            <td>${productList.name}</td>
            <td>${productList.price}</td>
            <td>${productList.qty}</td>
            <td>${productList.createdAt}</td>
        </tr>
        <%-- detail.jsp --%>

        
    </table>
</div>
</body>
</html>
