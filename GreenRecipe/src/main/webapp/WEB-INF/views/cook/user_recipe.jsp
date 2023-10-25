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

.container {
    max-width: 400px;
    margin: 0 auto;
    padding: 20px;
    background-color: #f5f5f5;
    border: 1px solid #ccc;
    border-radius: 5px;
}

.form-group {
    margin-bottom: 15px;
}

label {
    display: block;
    font-weight: bold;
}

.form-small {
    width: 90%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
}

.form-large {
    width: 90%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
    height: auto;
    min-height: 100px;
}

.form-step {
    width: 90%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
    height: auto;
    min-height: 50px;
}

.btn {
    display: inline-block;
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 3px;
    cursor: pointer;
}

.btn:hover {
    background-color: #0056b3;
}

.box {
    display: inline-block;
    width: 100%; 
    margin: 5px;
    border: 1px solid #ccc;
    padding: 10px;
    box-sizing: border-box; /* 내용에 border와 padding이 포함되도록 설정합니다. */
}
</style>
<script>



var cnt=1;
function addRecipeStep() {
	cnt++;
    const recipeSteps = document.getElementById("recipeSteps");
    
    // 이미지 업로드 필드 생성
    const newImg = document.createElement("li");
    newImg.innerHTML = '<label for="img">Step'+cnt+': 사진 올리기</label><input type="file" id="img" name="img">';
    recipeSteps.appendChild(newImg);

    // 요리 순서 입력 필드 생성
    const newStep = document.createElement("li");
    newStep.innerHTML = '<textarea id="step'+cnt+'" name="step'+cnt+'" class="form-step" placeholder="요리 순서 ' + cnt + '"></textarea>';
    recipeSteps.appendChild(newStep);
	
    
}






</script>

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
 

    <br><br><br><br><br><br><br>
 
<form action="/Cook/UserRecipe" method="post" enctype="multipart/form-data">
    <div class="container">
        <div class="box">
            <h1>유저 등록 레시피</h1>
            <div class="form-group">
                <label for="title">레시피 제목:</label>
                <input type="text" id="title" name="title" class="form-small" placeholder="예) 닭고기 볶음밥">
            </div>
            <div class="form-group">
                <label for="tip">요리팁:</label>
                <textarea id="tip" name="tip" class="form-large" placeholder="예) 소금 대신 새콤한 소스로 맛을 내어 나트륨 섭취를 줄었다."></textarea>
            </div>
            <div class="form-group">
                <label for="ingredient">재료:</label>
                <textarea id="ingredient" name="ingredient" class="form-large" placeholder="가지 250g. 양파 60g. 대파 25g. 청고추 15g. 홍고추 15g. 간편 어간장 15g 양념장 : 고추장 15g. 생강청 15g. 다진마늘 5g. 통깨 7g. 매실청 10g. 고춧가루 10g. 식초 10g"></textarea>
            </div>
            <div class="form-group">
                <label for="hashtag">분류:</label>
                <input type="radio" name="hashtag" value="한식">한식
                <input type="radio" name="hashtag" value="중식">중식
                <input type="radio" name="hashtag" value="일식">일식
                <input type="radio" name="hashtag" value="양식">양식
            </div>
            <div class="form-group">
                <label for="car">영양 정보(g):</label>
                <input type="number" name="car" size="7" maxlength="6" placeholder="탄수화물:10">
                <input type="number" name="fat" size="6" maxlength="6" placeholder="지방:7">
                <input type="number" name="na" size="6" maxlength="6" placeholder="나트륨:109">
                <input type="number" name="pro" size="6" maxlength="6" placeholder="단백질:9">
            </div>
        </div>

        <div class="box">
            <div class="form-group">
            <label for="food">완성사진: </label>   
            <input type="file" id="food" name="food">   
        </div>
        <br>
            <div class="form-group">
                <label for="manual">요리순서:</label>
                <ol id="recipeSteps">
                    <li>
                        <label for="img">Step 1: 사진 올리기</label>                      
                        <input type="file" id="img" name="img">                     
                        <textarea id="step1" name="step1" class="form-step" placeholder="요리 순서1: 1. 단호박은 삶아 으깬다."></textarea>
                    </li>
                </ol>
                <button type="button" id="addStep" onclick="addRecipeStep()">다음 단계 추가</button>
            </div>

            <button type="submit" class="btn">제출</button>
        </div>
    </div>
</form>
    
    
</body>
</html>





