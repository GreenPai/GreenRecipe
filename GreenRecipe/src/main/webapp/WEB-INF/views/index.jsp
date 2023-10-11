<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link rel="stylesheet"  href="/css/homepage.css" />

<title>그린 밥상을 부탁해</title>

<style>


</style>

</head>
<body>
      
    <header class="header">
    
        <div class="header_title">      
        <h1> 그린 밥상을 부탁해~!</h1>
        </div>
    
        <div class="header_logo">
        	<a href="/"><img class="head_logo"  src="/img/logo.png" ></a>
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
          <li><a href="/Pds/List?menu_id=MENU04">이벤트</a></li>
          </ul>
      </li>
    </ul>
 

    <br><br><br><br><br><br><br>
    
    <img src="/img/pot2.png" alt="Pot Image"  style="display: block; margin: 0 auto;"> 
    <!--  <div><a href="/Menus/List">메뉴 목록</a></div>
    <div><a href="/Pds/List?menu_id=MENU01">자료실 목록</a></div>
     <div><a href="/Pds/WriteForm?menu_id=MENU01&bnum=0">자료실 등록</a></div>
-->



    
</body>
</html>





