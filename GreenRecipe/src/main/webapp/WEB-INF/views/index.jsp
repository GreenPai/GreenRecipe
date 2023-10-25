<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>     

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link rel="stylesheet" href="/css/homepage.css" />

<title>그린 밥상을 부탁해</title>

<style>

.header_write{
    margin-left: 645px;
    margin-top: 20px;
}


/* 
 float:right;
  margin-right: 50px;  
*/
.submenu1>li {
   line-height: 50px;
   background-color: #CBEE99;
}

.menu>li:hover .submenu1 {
   height: 300px;
   transition-duration: 1s;
}

.submenu1>li:nth-child(6) {
   height: 50px;
   background-color: #CBEE99;
}

footer {
   text-align: center;
   background-color: #CAE0D1;
   padding: 1rem 0;
   margin: 1rem 0;
}

.listinfo {
   width: 250px;
   display: inline-block;
   vertical-align: top;
   text-align: center;
   background: #fff;
   margin-right: 20px;
   border-radius: 15px;
   padding: 30px 20px;
   -webkit-box-shadow: 3px 2px 15px 2px rgba(0, 0, 0, 0.41);
   box-shadow: 3px 2px 15px 2px rgba(0, 0, 0, 0.21);
   color: #666666;
}

.simple {
   font-size: 20px;
   font-weight: 600;
   background: #9cbb28;
   border-radius: 20px;
   text-align: center;
   color: #fff;
   display: inline-block;
   padding: 2px 20px;
}

.comment {
   font-size: 16px;
   line-height: 150%;
}
/* 움직이는 텍스트 */
.animated-title {
   font-size: 60px;
   font-family: 'Raleway', Sans-serif;
   font-weight: 300;
   position: relative;
   width: 100%;
   max-width: 100%;
   height: auto;
   padding: 100px 0;
   overflow-x: hidden;
   overflow-y: hidden;
}

/* 움직이는 텍스트 */
.animated-title { font-size:60px; 
                  font-family:'Raleway',Sans-serif; 
                  font-weight:300; 
                  position: relative; 
                  width: 100%;
                  max-width:100%; 
                  height: auto; 
                  padding:100px 0; 
                  overflow-x: hidden; 
                  overflow-y: hidden; 
                 }
                 
.animated-title .track {
            position: absolute; 
            white-space: nowrap;
            will-change: transform;
            animation: marquee 60s linear infinite; 
            }
            
@keyframes marquee {
             from { 
              transform: translateX(0); 
              }
              to {  
              transform: translateX(-50%); 
              }
}

@media (hover: hover) and (min-width: 700px){
.animated-title .content {
            -webkit-transform: translateY(calc(100% - 8rem)); 
            transform: translateY(calc(100% - 8rem));}
}

.container_v1 {
    font-size: 14px;
    line-height: 1.42857143;
    box-sizing: border-box;
    margin-right: 100px;
    margin-left: 100px;
    width: 1240px;
}

  .row_v1 {
    font-size: 14px;
    line-height: 1.42857143;
    color: #D9FFFF;
    box-sizing: border-box;
    margin-right: 20px;
    margin-left: 20px;
 
 }
    
 .f_link {
    font-size: 14px;
    line-height: 1.42857143;
    color: #999;
    box-sizing: border-box;
    margin: 0;
    padding-bottom: 16px; 
 }
 
.f_info {
    color: #999;
    box-sizing: border-box;
    margin: 0 0 10px;
    font-size: 13px;
    line-height: 1.6;
    margin-bottom: 16px;
    font-weight: 300;
}

 /* 이메일 박스 */
.form-control {
    box-sizing: border-box;
    margin: 0;
    font: inherit;
    overflow: auto;
    font-family: inherit;
    display: block;
    padding: 6px 12px;
    line-height: 1.42857143;
    color: #555;
    border-radius: 4px;
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
    width: 300px;
    height: 200px;
    font-size: 13px;
    background: #f5f5f5;
    border: 1px solid #e6e7e8;
}

.col-xs-4 intro {
    font-size: 14px;
    line-height: 1.42857143;
    color: #D9FFFF;
    box-sizing: border-box;
    position: relative;
    min-height: 1px;
    padding: 26px 0 0 24px;
    
 }
 

 
 .foot {
 width: auto;
 height: 270px;
 
 }
</style>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
 $(document).ready(function() {
     $('#btnClick').click(function() {
       var customerMessage = $("#customerSend").val();

       // AJAX 요청으로 서버에 이메일 전송 요청 보내기
       $.ajax({
         url: "/sendMail?email=childhong@naver.com",
         method: "POST",
         data: {
            message: customerMessage  
         },
         success: function(response) {
           alert("의견이 성공적으로 제출되었습니다.");
         },
         error: function(xhr, status, error) {
           alert("오류가 발생했습니다. 다시 시도해주세요." + xhr.status + ':' + xhr.testStatus);
           console.log(error);
         }
       });
     });
   }); 
</script>



</head>
<body>


   <header class="header">

      <div class="header_title">
      <br>
         <img src="/img/greenRecipeLogo.png"   alt="logo" style="width: 400px; height: 60px;">
      </div> 


        <div class="header_logo"> 
           <a href="/"><img class="head_logo"  src="/img/logo.png"></a>
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
      <li><a href="#">레시피</a>
         <ul class="submenu1">
            <li><a href="/Cook/View">재료등록</a></li>
            <li><a href="/Cook/Show">추천레시피</a></li>
            <li><a href="/Cook/Han">한식레시피</a></li>
            <li><a href="/Cook/Jap">일식레시피</a></li>
            <li><a href="/Cook/Chi">중식레시피</a></li>
            <li><a href="/Cook/Yang">양식레시피</a></li>
         </ul></li>
      <li><a href="#">리빙팁</a>
         <ul class="submenu2">
            <li><a href="/Tip">계량팁</a></li>
            <li><a href="/Kcal">칼로리</a></li>
         </ul></li>
      <li><a href="#">커뮤니티</a>
         <ul class="submenu3">
            <li><a href="/Pds/List?menu_id=MENU01&&nowpage=1">자랑 게시판</a></li>
            <li><a href="/Pds/List?menu_id=MENU02&&nowpage=1">자유 게시판</a></li>
            <li><a href="/Cook/User">유저 레시피</a></li>
         </ul></li>
      <li><a href="#">공지사항</a>
         <ul class="submenu4">
            <li><a href="/Pds/List?menu_id=MENU06&&nowpage=1">공지사항</a></li>
            <li><a href="/Pds/List?menu_id=MENU04&&nowpage=1">이벤트</a></li>
         </ul></li>
   </ul>
   
   <br><br><br><br>



   <div class="container">
      <div class="row">
         <div class="introduce">
            <p class="main">
               <span class="symbol"> <img src="/img/greenLogo.png"   alt="logo" style="margin-left: 180px;">
               <img alt="food" src="/img/food.png" style="position:relative; float: right; margin-right:300px;"></span>
               <br>
               <b style="font-size: 40px; margin-left: 180px;">프로젝트 소개</b>
            </p>
            <br>
            <p class="mcomt" style="color: gray; margin-left: 180px;">
               그린레시피는 자취생들의 집밥 걱정을 <br class="none"> 덜어줄 간단 레시피 프로젝트 입니다. <br
                  class="none"> 일상요리도 간단하게 만들어 보세요.
                  
            </p> 
            <br>
            <br>
            <br>
            <ul class="view" style="margin-left: 180px;">
               <li class="listinfo">
                  <p class="mt10">
                     <img src="/img/gandan.png" alt="로고" style="width: 150px; height: 100px;">
                  </p>
                  <p class="simple">간단하게!</p>
                  <br>
                  <p class="comment">
                     간단한 재료를 이용해 <br> 레시피를 완성하세요!
                  </p>
               </li>
               <li class="listinfo">
                  <p class="mt10">
                     <img src="/img/place.png" alt="로고" style="width: 150px; height: 100px;">
                  </p>
                  <p class="simple">어디서나!</p>
                  <br>
                  <p class="comment">
                     장소에 상관없이 <br> 간편하게 요리하세요!
                  </p>
               </li>
               <li class="listinfo">
                  <p class="mt10">
                     <img src="/img/bibimbab.png" alt="로고" style="width: 150px; height: 100px;">
                  </p>
                  <p class="simple">누구나!</p>
                  <br>
                  <p class="comment">
                     요리를 못해도 OK <br> 레시피만 보고 따라하세요!    
                  </p>
               </li>
               <li class="listinfo">
                  <p class="mt10">
                     <img src="/img/gamja.png" alt="로고" style="width: 150px; height: 100px;">
                  </p>
                  <p class="simple">신속하게!</p>
                  <br>
                  <p class="comment">
                     시간이 없어도 <br> 단번에 완성!
                  </p>
               </li>
               <li class="listinfo">
                  <p class="mt10">
                     <img src="/img/chicken.png" alt="로고" style="width: 150px; height: 100px;">
                  </p>
                  <p class="simple">맛있게!</p>
                  <br>
                  <p class="comment">
                     재료는 간편해도 <br> 훨씬 맛있게!
                  </p>
               </li>


            </ul>
         </div>
         
           <div class="animated-title">
      <div class="track">
         <div class="content" style="color: #D9D9D9">&nbsp;Green Simple
            Recipe&nbsp;&nbsp;Green Simple Recipe&nbsp;&nbsp;Green Simple
            Recipe&nbsp;&nbsp;Green Simple Recipe&nbsp;&nbsp;Green Simple Recipe</div>
      </div>
   </div>
   
    
         <br>
         </div>
      </div>
         <div class="foot" style="background-color:#D9FFFF;">
            <div class="container_v1" >
               <div class="row_v1">
               <div class="col-xs-4 intro" style="width: 500px; float: left;">
                <p class="f_link" style="margin:10px;">
                    <a target="_blank">회사소개 </a><span>|</span>
                    <a target="_blank">광고문의 </a><span>|</span>
                    <a target="_blank">개인정보처리방침 </a><span>|</span>
                    <a target="_blank">이용약관 </a><span>|</span>
                    <a>고객센터</a>
                </p>
               <p class="f_info">
               대표 : 홍길동 / E : help@greenrecipe.com / F : 051) xxx-xxxx
               <br>
                부산광역시 부산진구 중앙대로 749 
                <br>
                문의전화(운영시간 평일 09:00~18:00)
                <br>
                서비스 이용문의 : 070-xxxx-xxxx
               </p>
               <p class="f_info">
               (주)그린레시피 / 사업자등록번호 xxx-xx-xxxxx / 통신판매업신고 20xx-부산진구-xxxx / 벤처기업확인  
               <br>
               부산지방중소기업청 제 0xxxxxxxx-x-xxxxx호
               </p> 
               <p class="f_info" style="margin-bottom: 10px;">
               Copyright
               <b>그린 레시피</b>
               Inc.All Right Reserved
               </p>
            </div>
             <div class="col-xs-3 comment" style="width:500px; margin:20px; float: right;  ">
            <textarea
               id="custormerSend" name="board_text" class="form-control"
               placeholder="     불편사항이나 제안사항이 있으신가요?        그린 레시피에 전하고 싶은 의견을 남겨주세요"></textarea>
               <br>
            <button id="btnClick" style="float: right; margin-right: 65%;">의견
               제출</button>
         </div> 
      </div>
   </div>
</div>
   
   <!-- container end -->

   <footer style="clear: both;">
      <p class="footer-message"
         style="font-weight: bold; font-size: 15px; align-content: center;">오시는길
         : 부산광역시 부산진구 중앙대로 749</p>
      <p class="footer-contact" style="font-size: 12px; color: #545e6f;">컨택:
         dream@fun-coding.org</p>
      <p class="footer-copyright" style="fontz-size: 12px; color: #545e6f;"><b>Fist Recipe Since:
      2023</b></p>

   </footer>



</body>
</html>



