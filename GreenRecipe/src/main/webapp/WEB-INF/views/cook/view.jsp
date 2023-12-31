<%@page import="javax.servlet.descriptor.TaglibDescriptor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<title>레시피 선택</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon1.png">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<link rel="stylesheet"  href="/css/homepage.css" />

<style>

 .navbar-light .navbar-collapse {
        background-color: #D6F3ED; /* 검색창 배경색 */
    }

.matarialChoice {
	width: auto;
	height: auto;
}

.boxMatarial {
	float: left;
	width: 300px;
	margin: 40px;
}

input[type="submit"]::before {
	content: '';
	display: block;
	clear: both;
}

body {
	background-color: #D6F3ED;
}

.m1 {
	background-color: #E0E0E0;
}
</style>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script>

// 체크박스 1개만 체크하기 설정
  function input_check(mat){
	  let  radiocheck = document.querySelectorAll("[name=" + mat + "]:checked")
	  if(radiocheck.length<1) return false;
	  
	  return true;
  }
  
  // 채소 항목 2개 체크하기 설정
 /*  function input_chk(veg){
	  let  vegcheck   = document.querySelectorAll("[name=" + veg + "]:checked")
	  if(vegcheck.length>2) return false;
	  
	  return true;
  } */
  
  window.onload = function() {   
	   //  alert('formEl');
	     const   formEl         = document.querySelector('#form');
	     let     chkList        = null;
         const   meatsEl        = document.querySelector('#meats');
         const   madesEl        = document.querySelector('#mades');
         const   grainsEl       = document.querySelector('#grains');
         const   seefoodsEl     = document.querySelector('#seefoods');
         const   squidsEl       = document.querySelector('#squids');
         const   greenssEl      = document.querySelector('#greenss');
         const   vegitabledsEl  = document.querySelector('#vegitableds');
         const   noodlesEl      = document.querySelector('#noodles');
	       
	     formEl.addEventListener('submit', (e) => {
	    	// 항목별로 1개씩만 선택하기 구현
	    	  let result = input_check('meat');
	    	 	if(result == false) {
	    	 	alert('육류를 1개 이상 체크해 주세요')
	    		 e.preventDefault();
	    	 }
	    	    result = input_check('made')
	    	 	if(result == false) {
	    	 		alert('가공식품류를 1개 이상 체크해 주세요')
	    	 		e.preventDefault();
	    	 	}

	    	    result = input_check('grain')
	    	 	if(result == false) {
	    	 		alert('곡물류를 1개 이상 체크해 주세요')
	    	 		e.preventDefault();
	    	 	}
	    	    
	    	    result = input_check('greens')
	    	 	if(result == false) {
	    	 		alert('채소류를 1개 이상 체크해 주세요')
	    	 		e.preventDefault();
	    	 	}
	    	    
	    	   else {
	    		   
	    	   } 
	    	
	        let  arrData = [];	    	        
	        meatList = document.querySelectorAll('input[name="meat"]:checked');	        
	        for(let i=0;i<meatList.length;i++) {
	           arrData.push( meatList[i].value );
	        }
	        meatsEl.value = arrData;
	       
	        //-----------------------------------------
	        arrData = [];
	        madeList = document.querySelectorAll('input[name="made"]:checked');
	        for(let i=0;i<madeList.length;i++) {
	           arrData.push( madeList[i].value );
	        }   
	        madesEl.value = arrData;
	       
	        //-----------------------------------------
	        
	        arrData = [];
	        grainList = document.querySelectorAll('input[name="grain"]:checked');
	        for(let i=0;i<grainList.length;i++) {
	           arrData.push( grainList[i].value );
	        }   
	        grainsEl.value = arrData;
	      
	        //-----------------------------------------
	        
	        arrData = [];
	        seefoodList = document.querySelectorAll('input[name="seefood"]:checked');
	        for(let i=0;i<seefoodList.length;i++) {
	           arrData.push( seefoodList[i].value );
	        }   
	        seefoodsEl.value = arrData;
	      
	        //-----------------------------------------
	        
	        arrData = [];
	        squidList = document.querySelectorAll('input[name="squid"]:checked');
	        for(let i=0;i<squidList.length;i++) {
	           arrData.push( squidList[i].value );
	        }   
	        squidsEl.value = arrData;
	      
	        //-----------------------------------------
	        
	        
			arrData = [];
			greensList = document.querySelectorAll('input[name="greens"]:checked');
	        for(let i=0;i<greensList.length;i++) {
	           arrData.push( greensList[i].value );
	        }   
	        greenssEl.value = arrData;
	        //-----------------------------------------
	        
	        arrData = [];
	        vegitabledList = document.querySelectorAll('input[name="vegitabled"]:checked');
	        for(let i=0;i<vegitabledList.length;i++) {
	           arrData.push( vegitabledList[i].value );
	        }   
	        vegitabledsEl.value = arrData;
	        //-----------------------------------------
	        
	               
	         arrData = [];
	         noodleList = document.querySelectorAll('input[name="noodle"]:checked');
	        for(let i=0;i<noodleList.length;i++) {
	           arrData.push( noodleList[i].value );
	        }   
	        noodlesEl.value = arrData;
	        //-----------------------------------------
	     });
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
          <li><a href="/Pds/List?menu_id=MENU06">공지사항</a></li>
          <li><a href="/Pds/List?menu_id=MENU04&&nowpage=1">이벤트</a></li>
          </ul>
      </li>
    </ul>
 
      <br><br><br>

  
     <h2 style="text-align: center;">재료를 선택하세요</h2>
     <br>
     <form action="/Cook/Test" method="POST" id="form">
       <input type="hidden"   id="meats"       name="meats"/>
       <input type="hidden"   id="mades"       name="mades"/> 
       <input type="hidden"   id="grains"      name="grains"/>
       <input type="hidden"   id="seefoods"    name="seefoods"/> 
       <input type="hidden"   id="squids"      name="squids"/> 
       <input type="hidden"   id="greenss"     name="greenss"/>
       <input type="hidden"   id="vegitableds" name="vegitableds"/>
       <input type="hidden"   id="noodles" name="noodles"/>
        
       <div id="matarialChoice"> 
       <div class="boxMatarial">     
	   <h3 style="background-color: #42BC9C">육류</h3>
       <hr>
       	<div class="m1" >
       <c:forEach var="meat" items="${ meatList }">
         <input type="checkbox" name="meat" value="${ meat.menu_name }" id="${ meat.menu_id }"/>
         <label for="${ meat.menu_id }">${ meat.menu_name }</label>
         <br>
       </c:forEach>
       </div>
       </div>
       <!-- ////////////////////////////////////////////// -->
        <div class="boxMatarial">
       <h3 style="background-color: #42BC9C"> 곡물류 </h3>
       <hr>
       <div class="m1" style="background-color: #E0E0E0;" >
       <c:forEach var="grain" items="${ grainList }">
         <input type="checkbox" name="grain" value="${ grain.menu_name }" id="${ grain.menu_id }" />
         <label for="${ grain.menu_id }">${ grain.menu_name }</label>
         <br>
       </c:forEach>
       </div>
       </div>
       <!-- ////////////////////////////////////////////// -->
       
       <div class="boxMatarial">
       <h3 style="background-color: #42BC9C">면류</h3>
       <hr>
       <div class="m1">
       <c:forEach var="noodle" items="${ noodleList }">
         <input type="checkbox" name="noodle" value="${ noodle.menu_name }" id="${ noodle.menu_id }" />
         <label for="${ noodle.menu_id }">${noodle.menu_name }</label>
         <br>
       </c:forEach>
       </div> 
       </div>
       
        <!-- ////////////////////////////////////////////// -->
       
       <div class="boxMatarial"> 
       <h3 style="background-color: #42BC9C">채소Ⅰ</h3>
       <hr>
       <div class="m1">
       <c:forEach var="greens" items="${ greensList }">
         <input type="checkbox" name="greens" value="${ greens.menu_name }" id="${ greens.menu_id }" />
         <label for="${ greens.menu_id }">${ greens.menu_name }</label>
         <br>
       </c:forEach>
       </div>
       </div>
       
          <!-- ////////////////////////////////////////////// -->
          
       <div class="boxMatarial"> 
       <h3 style="background-color: #42BC9C">채소Ⅱ</h3>
       <hr>
       <div class="m1">
       <c:forEach var="vegitabled" items="${ vegitabledList }">
         <input type="checkbox" name="vegitabled" value="${ vegitabled.menu_name }" id="${ vegitabled.menu_id }" />
         <label for="${ vegitabled.menu_id }">${ vegitabled.menu_name }</label>
         <br>
       </c:forEach>
       </div>
       </div>
       
          <!-- ////////////////////////////////////////////// -->
           
       <div class="boxMatarial">
       <h3 style="background-color: #42BC9C">해산물Ⅰ</h3>
       <hr>
       <div class="m1" >
       <c:forEach var="seefood" items="${ seefoodList }">
         <input type="checkbox" name="seefood" value="${ seefood.menu_name }" id="${ seefood.menu_id }" />
         <label for="${ seefood.menu_id }">${ seefood.menu_name }</label>
         <br>
       </c:forEach>
       </div>
       </div>
       
       <!-- ////////////////////////////////////////////// -->
       
       <div class="boxMatarial">
       <h3 style="background-color: #42BC9C">해산물Ⅱ</h3>
       <hr>
       <div class="m1" >
       <c:forEach var="squid" items="${ squidList }">
         <input type="checkbox" name="squid" value="${ squid.menu_name }" id="${ squid.menu_id }" />
         <label for="${ squid.menu_id }">${ squid.menu_name }</label>
         <br>
       </c:forEach>
       </div>
       </div>
       
       <!-- ////////////////////////////////////////////// -->
       
       <div class="boxMatarial">
       <h3 style="background-color: #42BC9C"> 가공식품 </h3>
       <hr>
       <div class="m1">
       <c:forEach var="made" items="${ madeList }">
         <input type="checkbox" name="made" value="${ made.menu_name }" id="${ made.menu_id }" />
         <label for="${ made.menu_id }">${ made.menu_name }</label>
         <br>
       </c:forEach>
       </div>
       </div>
       
       <!-- ////////////////////////////////////////////// -->
       </div> 
       
    <input type="submit" value="선택 완료" style="width: 100px; height: 50px; position: fixed; bottom: 20px; left: 46%; text-align: center; border-radius: 5px;" />
     </form> 
</body>
</html> 
  







