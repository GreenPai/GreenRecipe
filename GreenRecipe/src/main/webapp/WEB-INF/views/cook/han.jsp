<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>     
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link rel="stylesheet"  href="/css/homepage.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<title>그린 밥상을 부탁해</title>

<style>

body { 
    background-color: #D6F3ED; 
}


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
          <li><a href="#">이벤트</a></li>
          </ul>
      </li>
    </ul>
 
      <br><br><br><br><br>
    
    <h1 class="text-center" style="color: #AE9175;">한식 레시피</h1>
    <br>
    
    <div class="container w-100">
    <div class="row">
        <c:forEach items="${recipeList}" var="recipe">
            <div class="col-md-3 mb-4">
                <div class="card h-100" >
                    <a href="/Tip">
                    <img src="${recipe.ATT_FILE_NO_MAIN}" class="card-img-top" alt="${recipe.RCP_NM}">
                    </a>
                    <div class="card-body">
                        <h5 class="card-title">${recipe.RCP_NM}</h5>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>


    
</body>
</html>





