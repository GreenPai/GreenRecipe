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
      
    <header class="header">
    
        <div class="header_title">      
        <h1><a href="/">그린 밥상을 부탁해~!</a></h1>
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
          <li><a href="/Cook/View">재료등록</a></li>
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
	  <div style="margin-bottom: 20px; width:100%;"> 
                <h2 style="text-align: center;">${recipeList[0].RCP_NM} 조리 방법</h2>
      </div>
     <div id="imageContainer">         
     <div style="display: flex; align-items: center; width:100%;" >     	
     <!-- 이미지 출력 -->
     <img id="stepImage" src="${recipeList[0].MANUAL_IMG01}" alt="Step 1"  width="200" height="150" style="float: left; margin-right: 10px; border-radius: 10px;" />
     
     <!-- 설명 출력 -->
     <p id="stepDescription">${recipeList[0].MANUAL01}</p>
     </div>
     <br><br>
     
     <div style="display: flex; align-items: center; width:100%;">  
      <!-- 이미지 출력 --> 
     <img id="stepImage" src="${recipeList[0].MANUAL_IMG02}" alt="Step 2" width="200" height="150" style="float: left; margin-right: 10px; border-radius: 10px; "/>
     
     <!-- 설명 출력 --> 
     <p id="stepDescription">${recipeList[0].MANUAL02}</p>
     </div>
     <br><br>
     
     <div style="display: flex; align-items: center; width:100%;">  
      <!-- 이미지 출력 -->
     <img id="stepImage" src="${recipeList[0].MANUAL_IMG03}" alt="Step 3" width="200" height="150" style="float: left; margin-right: 10px; border-radius: 10px;"/>
     
     <!-- 설명 출력 -->
     <p id="stepDescription">${recipeList[0].MANUAL03}</p>
     </div>
    <br><br>
    
     <div style="display: flex; align-items: center; width:100%;">  
      <!-- 이미지 출력 -->
     <img id="stepImage" src="${recipeList[0].MANUAL_IMG04}" alt="Step 4" width="200" height="150" style="float: left; margin-right: 10px; border-radius: 10px;"/>
     
     <!-- 설명 출력 -->
     <p id="stepDescription">${recipeList[0].MANUAL04}</p>
     </div> 
     <br><br>
     
     <div style="display: flex; align-items: center; width:100%;">   
      <!-- 이미지 출력 -->
     <img id="stepImage" src="${recipeList[0].MANUAL_IMG05}" alt="Step 5" width="200" height="150" style="float: left; margin-right: 10px; border-radius: 10px;"/>
       
     <!-- 설명 출력 -->
     <p id="stepDescription">${recipeList[0].MANUAL05}</p>
     </div>
     <br><br>
      
     <div style="display: flex; align-items: center; width:100%;">        
      <!-- 이미지 출력 -->
     <img id="stepImage" src="${recipeList[0].MANUAL_IMG06}" alt="Step 6"  width="200" height="150" style="float: left; margin-right: 10px; border-radius: 10px;"/>
     
     <!-- 설명 출력 -->
     <p id="stepDescription">${recipeList[0].MANUAL06}</p>
     </div>
      </div>
     <br><br> 
	 </div>

	</div>


    
</body>
</html>




