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

.tip-title {
    text-align: center;
    margin-top: 70px;    
    color: #334839;
    font-size: 42px;
}

.cont {
    text-align: center;
    margin-top: 10px;    
    color: #848684;
    font-size: 18px;
}


.cont2 {
    text-align: center;
    margin-top: 10px;    
    color: #333333;
    font-size: 20px;
}

.cont3 {
    text-align: center;
    margin-top: 10px;    
    color: #848684;
    font-size: 18px;
}

.sub-title1 {
    text-align: center;
    margin-top: 10px;    
    color: #B70D27;
    font-size: 26px;
}
.sub-title2 {
    text-align: center;
    margin-top: 10px;    
    color: #333333;
    font-size: 22px;
}



</style>

</head>
<body>
      
    <header class="header">
    
        <div class="header_title">      
        </div>
        
    
    
        <div class="header_logo">
        	<img class="head_logo"  src="img/logo.png" >
        </div>
        
        <div class="header_login">
           <ul>
              <li><a href="/User/List">로그인</a></li>
              <li><a href="/User/WriteForm">회원가입</a></li>
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
          <li><a href="https://ottogi.okitchen.co.kr/category/tip.asp">계량팁</a></li>        
        </ul>
      </li>
      <li>
        <a href="#">커뮤니티</a>
        <ul class="submenu3">
          <li><a href="/Pds/List?menu_id=MENU03">자랑 게시판</a></li>
          <li><a href="/Pds/List?menu_id=MENU05">자유 게시판</a></li>
          <li><a href="/Pds/List?menu_id=MENU04">공유 게시판</a></li>
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

    <h1 class="tip-title">계량 팁</h1>
    <br>
    <h4 class="cont">한 눈으로 살펴보는 간단한 계량팁을 준비했어요~ </h4>
    <h4 class="cont">요리를 하려는데 계량 기구가 없다면</h4>
    <h4 class="cont">다른 도구를 사용하거나 사진 속 분량을 보고 눈대충으로 헤아려서 할 수 있어요! </h4>
    <br><br><br>
    <h2 class="sub-title1">밥 숟가락 계량</h2>
    <h3 class="sub-title2">테이블스푼(T)과 티스분(t)은 어느 정도일까요?</h3>
    <h4 class="cont">- 성인용 밥숟가락으로 계량해 볼 수 있어요. </h4>
    
    <br><br><br><br><br>
    
    <div style="text-align: center;">
   	   <div style="display: inline-block; margin-right: 10px;">
          <img src="/img/tip01.jpg" alt="Tip Image" style="width: 75%; height: auto; display: inline-block;">
          <h3 class="cont2">1 테이블스푼(1T) = 15ml</h3>
          <h3 class="cont3">밥숟가락 1 큰술 정도의 양</h3>
          
       </div>
       <div style="display: inline-block;">
          <img src="/img/tip02.jpg" alt="Tip Image" style="width: 75%; height: auto; display: inline-block;">
       <h3 class="cont2">1 티스푼 (1t) = 5ml</h3>
       <h3 class="cont3">밥숟가락 1/3 큰술 정도의 양</h3>
       </div>
    </div>
       <br><br><br><br>
       
       
       <h2 class="sub-title1">종이컵 계량</h2>
       <br>
       <h3 class="sub-title2">밥숟가락 단위보다 더 많은 양은 어떻게 계량해야 할까요?</h3>
        <h4 class="cont">- 소형 종이컵에 한 컵 가득 담은 양을 참고하여 가늠해볼 수 있어요.</h4>
      
       <br><br><br><br>
       
      <div style="text-align: center;">
   	   <div style="display: inline-block; margin-right: 10px;">
          <img src="/img/tip03.jpg" alt="Tip Image" style="width: 80%; height: auto; display: inline-block;">
          <h3 class="cont2">액체 가득 1 컵 = 약 180ml</h3>          
       </div>
       <div style="display: inline-block;">
          <img src="/img/tip04.jpg" alt="Tip Image" style="width: 80%; height: auto; display: inline-block;">
       <h3 class="cont2">윗면을 깎아낸 밀가루 1 컵 = 약 100g</h3>
       </div>
       </div>
          
          
          
       <br><br><br><br>
          
       <h2 class="sub-title1">재료별 분량</h2>
       <br>
       <h3 class="sub-title2">자주 쓰는 재료들의 무게가 궁금해요!</h3>
        <h4 class="cont">- 사진에 담긴 재료의 양을 참고하여 눈대중으로 분량을 재어봅시다.</h4>
      
       <br><br><br><br>
      
      
       <div style="text-align: center;">
   	 	  <div style="display: inline-block; ">
        	  <img src="/img/tip05.jpg" alt="Tip Image" style="width: 85%; height: auto; display: inline-block;">
          	  <h3 class="cont2">양파(1/4개=50g)</h3>          
   	      </div>
   	      <div style="display: inline-block;">
    	      <img src="/img/tip06.jpg" alt="Tip Image" style="width: 85%; height: auto; display: inline-block;">
  	      <h3 class="cont2">마늘(1쪽=5g)</h3>
  	      </div>
   	      <div style="display: inline-block; ">
    	      <img src="/img/tip07.jpg" alt="Tip Image" style="width: 85%; height: auto; display: inline-block;">
   	      <h3 class="cont2">생강(1톨 = 약 15g)</h3>          
   	      </div>
    	  <div style="display: inline-block; ">
      	    <img src="/img/tip08.jpg" alt="Tip Image" style="width: 85%; height: auto; display: inline-block;">
     	     <h3 class="cont2">대파 흰 부분(1대 = 약15cm)</h3>          
   	      </div>
       </div>
       
        <br>
     
       <div style="text-align: center;">
   	 	  <div style="display: inline-block;">
        	  <img src="/img/tip09.jpg" alt="Tip Image" style="width: 85%; height: auto; display: inline-block;">
          	  <h3 class="cont2">당근(1/2개=약100g)</h3>          
   	      </div>
   	      <div style="display: inline-block;">
    	      <img src="/img/tip10.jpg" alt="Tip Image" style="width: 85%; height: auto; display: inline-block;">
  	      <h3 class="cont2">무(1토막=약150g)</h3>
  	      </div>
   	      <div style="display: inline-block; ">
    	      <img src="/img/tip11.jpg" alt="Tip Image" style="width: 85%; height: auto; display: inline-block;">
   	      <h3 class="cont2">애호박(1/2개=약150g)</h3>          
   	      </div>
    	  <div style="display: inline-block; ">
      	    <img src="/img/tip12.jpg" alt="Tip Image" style="width: 85%; height: auto; display: inline-block;">
     	     <h3 class="cont2">돼지고기(1토막=약200g)</h3>          
   	      </div>
       </div>
       
       <br><br><br><br><br>
       
       
</body>
</html>





