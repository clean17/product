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
        <h1>상품 추가 페이지</h1>
    </div>
    <hr>
    <div class="table__box">
    <form action="/product/add" method="post" class="form__">
        <table>
            <tr><input type="text" name="name" placeholder="Enter name"></tr>
            <tr><input type="number" name="price" placeholder="Enter price"></tr>
            <tr><input type="number" name="qty" placeholder="Enter qty"></tr>
        </table>
        <div class="flex__right">
        <div > <button type="submit" class="right__font"> 추가 </button></div>
        </div>
    </form>
</div>
</body>
</html>