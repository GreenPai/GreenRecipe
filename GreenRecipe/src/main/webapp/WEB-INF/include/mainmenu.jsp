<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link rel="stylesheet"  href="/css/homepage.css" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>그린 밥상을 부탁해</title>

<style>

.header_write{
    margin-left: 645px;
    margin-top: 20px;
}
</style>

</head>
<body>
      
    <header class="header">
    
         <div class="header_title">
      <br>
         <img src="/img/greenRecipeLogo.png"   alt="logo" style="width: 400px; height: 60px;">
      </div> 

    
       <div class="header_logo">
        	<a href="/"><img class="head_logo"  src="/img/logo.png" ></a>
        </div>  
        
       <div class="header_write">
        	<a href="/Cook/UserWrite"><img class="head_write"  src="/img/write.png" ></a>
        </div> 
       
     <div class="header_login">
    <ul>
        <li>
            <c:choose>
                <c:when test="${not empty sessionScope['loginMember']}">
                    <div class="left-content">
                        <img src="/img/user.jpg" alt="" class="left-image" width="40" height="40">
                        <c:set var="userName" value="${sessionScope['loginMember']}" />
                        <p name="userid" value="${sessionScope.userid}">${userName}</p>
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
          <li><a href="/Cook/View">재료등록</a></li>
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





