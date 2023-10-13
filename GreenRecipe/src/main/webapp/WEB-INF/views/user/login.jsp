<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="/img/favicon.ico">
    <link rel="stylesheet" href="/css/homepage.css" />
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <title>그린 밥상을 부탁해</title>

    <style>
        .submenu1 > li {
            line-height: 50px;
            background-color: #CBEE99;
        }
        .menu > li:hover .submenu1 {
            height: 300px;
            transition-duration: 1s;
        }

        .submenu1 > li:nth-child(6) {
            height: 50px;
            background-color: #CBEE99;
        }

        #tableinfo {
            background-color: white;
        }
    </style>

    <script src="//code.jquery.com/jquery.min.js"></script>
    <script>
        $(function () {
            $("#btnLogin").click(function () {
                var userid = $("#userid").val();
                var passwd = $("#passwd").val();
                if (userid == "") {
                    alert("아이디를 입력하세요");
                    $("#userid").focus(); // 입력포커스 이동
                    return; // 함수 종료
                }
                if (passwd == "") {
                    alert("비밀번호를 입력하세요");
                    $("#passwd").focus();
                    return;
                }

                // 폼 내부의 데이터를 전송할 주소
                document.form1.action = "${path}/User/Login2";
                document.form1.submit(); // 제출
            });
        });

    </script>

</head>
<body>

<header class="header">

    <div class="header_title">
        <h1> 그린 밥상을 부탁해~!</h1>
    </div>

    <div class="header_logo">
        <a href="/"><img class="head_logo" src="/img/logo.png"></a>
    </div>

    <div class="header_login">
        <ul>
            <li><a href="/User/List">로그인</a></li>
            <li><a href="/User/Agree">회원가입</a></li>
        </ul>
    </div>

</header>

<ul class="menu">
    <li>
        <a href="#">레시피</a>
        <ul class="submenu1">
            <li><a href="/Cook/List">재료등록</a></li>
            <li><a href="/Cook/Recipe1">추천레시피</a></li>
            <li><a href="/Cook/Han">한식레시피</a></li>
            <li><a href="/Cook/Jap">일식레시피</a></li>
            <li><a href="/Cook/Chi">중식레시피</a></li>
            <li><a href="/Cook/Yang">양식레시피</a></li>
        </ul>
    </li>
    <li>
        <a href="#">리빙팁</a>
        <ul class="submenu2">
            <li><a href="/Tip">계량팁</a></li>
        </ul>
    </li>
    <li>
        <a href="#">커뮤니티</a>
        <ul class="submenu3">
            <li><a href="/Pds/List?menu_id=MENU01">자랑 게시판</a></li>
            <li><a href="/Pds/List?menu_id=MENU02">자유 게시판</a></li>
            <li><a href="/Pds/List?menu_id=MENU03">공유 게시판</a></li>
        </ul>
    </li>
    <li>
        <a href="#">공지사항</a>
        <ul class="submenu4">
            <li><a href="/Pds/List?menu_id=MENU06">공지사항</a></li>
            <li><a href="#">이벤트</a></li>
        </ul>
    </li>
</ul>

<br><br><br><br><br><br><br>

<h2 style="text-align: center;">로그인</h2>
<br>

<div style="text-align: center;">
  <form name="form1" method="post">
    <table border="1" width="300px" id="tableinfo" style="display: inline-block;">
        <tr>
            <td>아이디</td>
            <td><input id="userid" name="userid"></td>
        </tr>
        <tr>
            <td>비밀번호</td>
            <td><input type="password" id="passwd" name="passwd"></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <button type="button" id="btnLogin">로그인</button>
                <a href="/User/Agree"><button type="button" >회원가입</button></a>
              
                <c:if test="${loginError == '비밀번호가 일치하지 않습니다.'}">
                    <div style="color: red;">비밀번호가 일치하지 않습니다.</div>
                </c:if>
                <c:if test="${loginError == '사용자를 찾을 수 없습니다.'}">
                    <div style="color: red;">사용자를 찾을 수 없습니다.</div>
                </c:if>
                
            </td>
        </tr>
    
    </table>
  </form>
    
</div>

</body>
</html>
