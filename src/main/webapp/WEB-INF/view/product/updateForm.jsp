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
        <h1>상품 수정 페이지</h1>
    </div>
    <hr>
    
    <!-- ${productList.id} -->
    <div class="table__box">
        <div>
            <form action="/product/${p.id}/update" method="post">
                <table border="1">
                    <tr>
                        <th>번호</th>
                        <th>상품명</th>
                        <th>가격</th>
                        <th>재고</th>
                        <th>등록일</th>
                    </tr>
                    <tr>
                        <td><input type="text" readonly value="${p.id}"></td>
                        <td><input type="text" name="name" value="${p.name}"></td>
                        <td><input type="text" name="price" value="${p.price}"></td>
                        <td><input type="text" name="qty" value="${p.qty}"></td>
                        <td><input type="text" readonly value="${p.createdAt}"></td>
                    </tr>
                </table>
        </div>
        <div class="flex__right">
            <div></div>
            <div>
                <button type="submit">수정 완료</button>
            </div>
            </form>
        </div>
    </div>
    </body>
</html>