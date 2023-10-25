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
        
        
              
              /*  사용자 레시피 중간으로  */
      .header_write {
          text-align: center; 
          display: flex; 
          justify-content: center;
          align-items: center;
          height: 100%;
      }
      
      .head_write {
          display: inline-block;
      }
      
      #loginlayoutbim {
          position: relative;
          top: 50%;
          left: 50%;
         transform: translate(-50%, -50%);
      }
      
     .input-box {
    position: relative;
    margin: 10px auto; /* auto를 사용하여 가로 중앙 정렬 */
    width: 500px;
}
        
        
        
        
      .input-box > input{
        background:white;
        border:none;
        border-bottom: solid 1px #ccc;
        padding:20px 0px 5px 0px;
        font-size:14pt;
        width:100%;
      }
      input::placeholder{
       color:transparent;
        }
        input:placeholder-shown + label{
        color:#aaa;
        font-size:14pt;
        top:15px;
      }
      input:focus + label, label{
        color:#8aa1a1;
        font-size:10pt;
        pointer-events: none;
        position: absolute;
        left:0px;
        top:0px;
        transition: all 0.2s ease ;
        -webkit-transition: all 0.2s ease;
        -moz-transition: all 0.2s ease;
        -o-transition: all 0.2s ease;
      }
      input:focus, input:not(:placeholder-shown){
        border-bottom: solid 1px #8aa1a1;
        outline:none;
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
        <li>
            <c:choose>
                <c:when test="${not empty sessionScope['loginMember']}">
                    <div class="left-content">
                        <img src="/img/user.jpg" alt="" class="left-image" width="40" height="40">
                        <c:set var="userName" value="${sessionScope['loginMember']}" />
                        <p>${userName}</p>
                    </div>
                    <a href="/logout" class="right-logout">로그아웃</a>
                </c:when>
                <c:otherwise>
                    <!-- 세션이 없을 때, 로그인 링크 -->
                    <a href="/User/List">로그인</a>
                    <li><a href="/User/Agree">회원가입</a></li>
                </c:otherwise>
            </c:choose>
        </li>
    </ul>
</div>

</header>

<ul class="menu">
    <li>
        <a href="#">레시피</a>
        <ul class="submenu1">
            <li><a href="/Cook/List">재료등록</a></li>
            <li><a href="/Cook/Show">추천레시피</a></li>
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
            <li><a href="/Kcal">칼로리</a></li> 	
        </ul>
    </li>
    <li>
        <a href="#">커뮤니티</a>
        <ul class="submenu3">
            <li><a href="/Pds/List?menu_id=MENU01&&nowpage=1">자랑 게시판</a></li>
            <li><a href="/Pds/List?menu_id=MENU02&&nowpage=1">자유 게시판</a></li>
            <li><a href="/Cook/User">유저 레시피</a></li>
        </ul>
    </li>
    <li>
        <a href="#">공지사항</a>
        <ul class="submenu4">
            <li><a href="/Pds/List?menu_id=MENU06&&nowpage=1">공지사항</a></li>
            <li><a href="/Pds/List?menu_id=MENU04&&nowpage=1">이벤트</a></li>
        </ul>
    </li>
</ul>

<br><br><br><br><br><br><br>

<br><br><br>

<div style="text-align: center; width: 60%;" id="loginlayoutbim">
        <form name="form1" method="post">
<h2 style="text-align: center;">로그인</h2>

            <div class="input-box">
                <input id="userid" type="text" name="userid" placeholder="아이디" >
                <label for="userid">아이디</label>
            </div>

            <div class="input-box">
                <input id="passwd" type="password" name="passwd" placeholder="비밀번호">
                <label for="password">비밀번호</label>
            </div>
                <button type="button" id="btnLogin">로그인</button>
                <a href="/User/Agree"><button type="button" >회원가입</button></a>
            <div>
                <c:if test="${loginError == '비밀번호가 일치하지 않습니다.'}">
                    <div style="color: red;">비밀번호가 일치하지 않습니다.</div>
                </c:if>
                <c:if test="${loginError == '사용자를 찾을 수 없습니다.'}">
                    <div style="color: red;">사용자를 찾을 수 없습니다.</div>
                </c:if>
            </div>
        </form>
</div>

</body>
</html>