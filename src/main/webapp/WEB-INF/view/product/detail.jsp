<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/css/test.css">
</head>

<body>
    <nav>
        <ul>
            <li>
                <a href="/">홈</a>
            </li>
            <li>
                <a href="/product/addForm">상품등록</a>
            </li>
        </ul>
    </nav>
    <div class="top">
        <h1>상품 목록 페이지</h1>
    </div>
    <hr>
    
    <!-- ${productList.id} -->
    <div class="table__box">
        <table border="1">
            <tr>
                <th>번호</th>
                <th>상품명</th>
                <th>가격</th>
                <th>재고</th>
                <th>등록일</th>
            </tr>
            <%-- 여기서 product 는 page객체에 넣어줌 el표현식으로 page객체의 데이터를 꺼내옴 --%>
                <tr>
                    <td>${product.id}</td>
                    <td>${product.name}</td>
                    <td>${product.price}</td>
                    <td>${product.qty}</td>
                    <td>${product.createdAt}</td>
                </tr>
        </table>
        <div class="flex__box">
            <form action="/product/${product.id}/update" method="get">
                <button type="submit">상품 수정</button>
            </form>
            <form action="/product/${product.id}/delete" method="post">
                <button type="submit">상품 삭제</button>
            </form>
        </div>
    </div>
</body>
</html>