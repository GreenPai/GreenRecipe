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

<script>
// JavaScript manualImg가 null이면 이미지 출력안되게
/*const imageContainer = document.getElementById('#imageContainer');

const manualImages = [
	  "${recipeList[0].MANUAL_IMG01}",
	  "${recipeList[0].MANUAL_IMG02}",
	  "${recipeList[0].MANUAL_IMG03}",
	  "${recipeList[0].MANUAL_IMG04}",
	  "${recipeList[0].MANUAL_IMG05}",
	  "${recipeList[0].MANUAL_IMG06}"
	];

for (let i = 0; i < manualImages.length; i++) {
	  const imageUrl = manualImages[i];
	  
	  if (imageUrl !== "null") {
	    const img = document.createElement('img');
	    img.src = imageUrl;
	    imageContainer.appendChild(img);
	  } 
	}
*/

</script>


</head>
<body>
      
          
    <header class="header" style="display: flex;">
    
        <div class="header_title">      
        <h1> 그린 밥상을 부탁해~!</h1> 
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
        	<a href="/"><img class="head_write"  src="/img/write.png" ></a>
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
          <li><a href="/Pds/List?menu_id=MENU01">자랑 게시판</a></li>
          <li><a href="/Pds/List?menu_id=MENU02">자유 게시판</a></li>
          <li><a href="/Pds/List?menu_id=MENU03">공유 게시판</a></li>
          <li><a href="/Cook/User">유저 레시피</a></li>
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
    
    <br>
    
   
   <div class="container mt-5 rounded-container">
    <div class="row">
        <div class="col-md-6">
            <img src="${recipeList[0].ATT_FILE_NO_MAIN}" class="img-fluid border-image" alt="${recipeList[0].RCP_NM}">
        </div>
        <div class="col-md-6" style="background-color: white;"> 
            <div style="margin-bottom: 20px;">
                <h1>${recipeList[0].RCP_NM} 레시피</h1>
            </div>
            <div style="background-color: #f2f2f2; padding: 10px; border: 2px solid #E7E7E7; border-radius: 10px; margin-bottom: 20px;">
                <h4>재료</h4>
                <ul class="list-group">
                    <c:forEach items="${recipeList[0].RCP_PARTS_DTLS.split('●')}" var="ingredient">
                        <li class="list-group-item">${ingredient}</li>
                    </c:forEach>
                </ul>
            </div>
            <div style="background-color: #f2f2f2; padding: 10px; border: 2px solid #E7E7E7; border-radius: 10px; margin-bottom: 20px;">
                <h4>영양 정보</h4>
                <ul class="list-group">
                <p class="list-group-item">탄수화물: ${recipeList[0].INFO_CAR}g</p>
                <p class="list-group-item">지방: ${recipeList[0].INFO_FAT}g</p>
                <p class="list-group-item">단백질: ${recipeList[0].INFO_PRO}g</p>              
                <p class="list-group-item">나트륨: ${recipeList[0].INFO_NA}mg</p>
                </ul> 
            </div>
            <div style="background-color: #f2f2f2; padding: 10px; border: 2px solid #E7E7E7; border-radius: 10px;">
                <h4>요리 팁</h4>
                <ul class="list-group">
                <p class="list-group-item"> ${recipeList[0].RCP_NA_TIP} </p> 
                </ul>
            </div>
        </div>
    </div>
</div> 
	<div class="container mt-8 rounded-container">
    <div class="row">
        <div style="margin-bottom: 20px; width: 100%;">
            <h2 style="text-align: center;">${recipeList[0].RCP_NM} 조리 방법</h2>
        </div>
        <div id="imageContainer">

            <c:choose>
                <c:when test="${not empty recipeList[0].MANUAL_IMG01}">
                    <div style="display: flex; align-items: center; width: 100%; margin-bottom: 20px;">
                        <!-- 이미지 출력 -->
                        <img id="stepImage" src="${recipeList[0].MANUAL_IMG01}" alt="Step 1" width="200" height="150" style="float: left; margin-right: 10px; border-radius: 10px;" />

                        <!-- 설명 출력 -->
                        <p id="stepDescription">${recipeList[0].MANUAL01}</p>
                    </div>
                </c:when>
            </c:choose>

            <c:choose>
                <c:when test="${not empty recipeList[0].MANUAL_IMG02}">
                    <div style="display: flex; align-items: center; width: 100%; margin-bottom: 20px;">
                        <!-- 이미지 출력 -->
                        <img id="stepImage" src="${recipeList[0].MANUAL_IMG02}" alt="Step 2" width="200" height="150" style="float: left; margin-right: 10px; border-radius: 10px;" />

                        <!-- 설명 출력 -->
                        <p id="stepDescription">${recipeList[0].MANUAL02}</p>
                    </div>
                </c:when>
            </c:choose>

            <c:choose>
                <c:when test="${not empty recipeList[0].MANUAL_IMG03}">
                    <div style="display: flex; align-items: center; width: 100%; margin-bottom: 20px;">
                        <!-- 이미지 출력 -->
                        <img id="stepImage" src="${recipeList[0].MANUAL_IMG03}" alt="Step 3" width="200" height="150" style="float: left; margin-right: 10px; border-radius: 10px;" />

                        <!-- 설명 출력 -->
                        <p id="stepDescription">${recipeList[0].MANUAL03}</p>
                    </div>
                </c:when>
            </c:choose>

            <c:choose>
                <c:when test="${not empty recipeList[0].MANUAL_IMG04}">
                    <div style="display: flex; align-items: center; width: 100%; margin-bottom: 20px;">
                        <!-- 이미지 출력 -->
                        <img id="stepImage" src="${recipeList[0].MANUAL_IMG04}" alt="Step 4" width="200" height="150" style="float: left; margin-right: 10px; border-radius: 10px;" />

                        <!-- 설명 출력 -->
                        <p id="stepDescription">${recipeList[0].MANUAL04}</p>
                    </div>
                </c:when>
            </c:choose>

            <c:choose>
                <c:when test="${not empty recipeList[0].MANUAL_IMG05}">
                    <div style="display: flex; align-items: center; width: 100%; margin-bottom: 20px;">
                        <!-- 이미지 출력 -->
                        <img id="stepImage" src="${recipeList[0].MANUAL_IMG05}" alt="Step 5" width="200" height="150" style="float: left; margin-right: 10px; border-radius: 10px;" />

                        <!-- 설명 출력 -->
                        <p id="stepDescription">${recipeList[0].MANUAL05}</p>
                    </div>
                </c:when>
            </c:choose>

            <c:choose>
                <c:when test="${not empty recipeList[0].MANUAL_IMG06}">
                    <div style="display: flex; align-items: center; width: 100%; margin-bottom: 20px;">
                        <!-- 이미지 출력 -->
                        <img id="stepImage" src="${recipeList[0].MANUAL_IMG06}" alt="Step 6" width="200" height="150" style="float: left; margin-right: 10px; border-radius: 10px;" />

                        <!-- 설명 출력 -->
                        <p id="stepDescription">${recipeList[0].MANUAL06}</p>
                    </div>
                </c:when>
            </c:choose>
        </div>
    </div>
</div>




    
</body>
</html>




