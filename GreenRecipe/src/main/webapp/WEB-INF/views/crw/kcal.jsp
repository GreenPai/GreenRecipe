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
.tip-title {
	text-align: center;
	margin-top: 70px;
	color: #334839;
	font-size: 42px;
}

.header_write{
    margin-left: 645px;
    margin-top: 20px;
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

table {
	border-collapse: collapse;
	margin-left: auto;
	margin-right: auto;
	width: 280px;
	height: 400px;
}

td {
	padding: 5px 10px;
	text-align: center;
}

input {
	text-align: right;
	border: none;
	width: 250px;
	height: 40px;
}

input:focus {
	outline: none;
}
</style>

<script>
function add(char) {
    var display = document.getElementById('display'); 
    display.value = display.value + char;
}
function calculate() {
    var display = document.getElementById('display');
    var result = eval(display.value); // 식을 계산하고 result 변수에 저장
    document.getElementById('result').value = result;
}
function reset() {
    document.getElementById('display').value = "";
    document.getElementById('result').value = "";
}


</script>

</head>
<body>
      
          
    <header class="header" style="display: flex;">
    
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
    
    
 <!-- /////////////////////////////////////////////////////////////////////////////// -->
    <h1 class="tip-title">칼로리</h1>
    <br>
    <h4 class="cont">칼로리(Calorie)는 열량의 단위이며, 기호로 cal을 사용합니다. </h4>
    <h4 class="cont">1 cal은 1 기압 하에서 순수한 물 1g의 온도를 1°C(도) 만큼 올리는데 필요한 열량을 말하고 열량은 음식에 들어 있는 에너지를 뜻합니다. </h4>
    <h4 class="cont">우리는 음식을 섭취해 체온을 일정하게 유지하고, 음식을 소화시키고, 운동을 하고, 성장을 하고, 뇌를 비롯한 신체기관을 움직이고 있습니다. </h4>
    <br><br><br>
    <h2 class="sub-title1">연령별 남녀 1일 권장 칼로리</h2>
    <h3 class="sub-title2">보건복지부의 2020 한국인 영양소 섭취기준에 따르면 연령별 성인 여자 남자 1일 하루 권장 칼로리는 다음과 같습니다.</h3>
    <h4 class="cont">- 다음 사진을 통해 권장 칼로리를 확인하실 수 있습니다.</h4>
    
    <br><br><br><br><br>
    
    <div style="text-align: center;">
   	   <div style="display: inline-block; margin-right: 10px;">
          <img src="/img/man.png" alt="kcal Image" style="width: 75%; height: auto; display: inline-block;">
          <h3 class="cont2"> 남성 1일 권장 칼로리</h3>
          
       </div>
       <div style="display: inline-block;">
          <img src="/img/women.png" alt="kcal Image" style="width: 75%; height: auto; display: inline-block;">
       <h3 class="cont2">여성 1일 권장 칼로리</h3>
       </div>
    </div>
       <br><br><br><br>   
       
       
       <h2 class="sub-title1">칼로리 계산</h2>
       <br>
       <h3 class="sub-title2">내 몸이 필요로 하는 하루 칼로리를 계산하기 위해서는 먼저 기초 대사량을 알아야 합니다.</h3>
        <h4 class="cont">- 기초 대사량은 아무 일도 하지 않고 쉬고 있을 때, 우리 몸이 생명유지를 위해 소비하는 최소한의 에너지를 말합니다.</h4>
        <h4 class="cont">- 기초대사량을 산출하기 위한 방법으로는 대표적으로 해리스 베네딕트 방정식과 미핀 세인트 젤 방정식이 있습니다.</h4>
      
       <br><br><br><br>
       
      <div style="text-align: center;">
   	   <div style="display: inline-block; margin-right: 10px;">
          <img src="/img/haris.png" alt="Tip Image" style="width: 80%; height: auto; display: inline-block;">
          <h3 class="cont2">해리스 베네딕트 방정식</h3>          
       </div>
       <div style="display: inline-block;">
          <img src="/img/miffin.png" alt="Tip Image" style="width: 80%; height: auto; display: inline-block;">
       <h3 class="cont2">미핀 세인트 젤 방정식</h3>
       </div>
       </div>
          
       <br><br><br><br>
          
       <h2 class="sub-title1">음식 칼로리</h2>
       <br>
       <h3 class="sub-title2">우리가 먹는 음식의 칼로리를 계산하는법에 대해 알아보겠습니다.</h3>
        <h4 class="cont">식품의 탄수화물, 단백질, 지방 함량을 확인하세요.</h4>
      
       <br><br><br><br>
      
      
       <div style="text-align: center;">
   	 	  <div style="display: inline-block; ">
        	  <img src="/img/kcal.png" alt="Tip Image" style="width: 700px; height: 350px; display: inline-block;">
        	  <br><br>
          	  <h3 class="cont2">각 주 영양소에 열량을 곱하세요. <br>
          	  단백질 1 g은 약 4kcal입니다. 
          	  탄수화물 1 g은 4kcal, 그리고 지방 1 g은 9 kcal입니다.<br> 
          	  만약 단백질 20 g, 탄수화물 35 g, 그리고 지방 15 g이 함유된 식품을 섭취한다면, 
          	  20 x 4, 35 x 4, 그리고 15 x 9로 계산해 주 영양소 각각의 칼로리양을 파악하면 됩니다.</h3>          
   	      </div>
   	      <br><br><br><br>
   	       <div style="display: inline-block; ">
        	  <img src="/img/kcal1.png" alt="Tip Image" style="width: 700px; height: 350px; display: inline-block;">
        	  <br><br>
          	  <h3 class="cont2">주 영양소 각각의 칼로리를 합산하세요. <br>
          	  이제 칼로리가 어떻게 나누어지는지 파악되었으니 각각을 합산하여 1회 섭취량의 총 칼로리를 확인할 수 있습니다.<br> 
          	  이전의 예시로 다시 보면, 80 + 140 + 135 = 355칼로리가 됩니다.</h3>          
   	      </div>
   	     
       </div>
       <br><br><br><br><br><br><br>
       
       <h3 style="text-align: center;">칼로리를 계산해보세요!!</h3>
       <h4 style="text-align: center; color: #848684;">탄수화물: g당 4kcal, 단백질: g당 4kcal, 지방: g당 9kcal</h4>
       <br><br>       
       
      <table border="1">
        <tr>
            <td colspan="4">
                <input type="text" id="display">
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <input type="text" id="result">
            </td>
        </tr>
        <tr>
            <td colspan="3" onclick="reset()">AC</td>
            <td onclick="add('/')">/</td>
        </tr>
        <tr>
            <td onclick="add(7)">7</td>
            <td onclick="add(8)">8</td>
            <td onclick="add(9)">9</td>
            <td onclick="add('*')">*</td>
        </tr>
        <tr>
            <td onclick="add(4)">4</td>
            <td onclick="add(5)">5</td>
            <td onclick="add(6)">6</td>
            <td onclick="add('-')">-</td>
        </tr>
        <tr>
            <td onclick="add(1)">1</td>
            <td onclick="add(2)">2</td>
            <td onclick="add(3)">3</td>
            <td onclick="add('+')">+</td>
        </tr>
        <tr>
            <td colspan="2" onclick="add(0)">0</td>
            <td onclick="add('.')">.</td>
            <td onclick="calculate()">=</td>
        </tr>
    </table>

       
       
       <br><br><br><br><br>
       
       
</body>
</html>





