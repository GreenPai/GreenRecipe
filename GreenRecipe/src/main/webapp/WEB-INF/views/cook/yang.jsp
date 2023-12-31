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

 .border-image {
    border: 1px solid #069574; 
    border-radius: 20px; 
    padding: 6px; 
    background-color: #069574; 
  }
  
   .rounded-container {
    border: 2px solid #069574; 
    border-radius: 20px; /* 둥글게 처리하는 부분 */
    padding: 20px;
    background-color: #fff; 
    margin-top: 5px; /* 원하는 여백을 조정하세요 */
  }

 .navbar-light .navbar-collapse {
        background-color: #D6F3ED; /* 검색창 배경색 */
    }
    

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
</style>

</head>
<body>
      
         
    <header class="header" style="display: flex;">
    
         <div class="header_title">
      <br>
         <img src="/img/greenRecipeLogo.png"   alt="logo" style="width: 400px; height: 60px;">
      </div> 

	  
    
    <nav class="navbar">
  <div class="container-fluid">
    <form class="d-flex" action="/Cook/Search" method="get">
      <input class="form-control me-2" type="search" name="query" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
  </div>
</nav>
    
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
 
      <br><br><br><br><br>
    
    <h1 class="text-center" style="color: #AE9175;">양식 레시피</h1>
    <br>
    
    <div class="container w-100">
    <div class="row">
        <c:forEach items="${recipeList}" var="recipe">
            <div class="col-md-3 mb-4">
                <div class="card h-100" >
                    <a href="/Cook/Select?title=${recipe.RCP_NM}">
                    <img src="${recipe.ATT_FILE_NO_MAIN}" class="card-img-top" alt="${recipe.RCP_NM}" style="width: 253px; height: 200px;">
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





