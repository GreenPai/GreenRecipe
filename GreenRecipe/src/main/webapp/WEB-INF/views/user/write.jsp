<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원 등록</title>
<link rel="shortcut icon" href="favicon.ico">
<link rel="stylesheet" href="/css/common.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<style>
   table   { height: 900px; text-align: center;}
   td      { width : 60%;  text-align: left;}  
   input[type=text] ,  input[type=password], input[type=email]   { width:80%; } 
   div {text-align: center;}
</style>
<script src="//code.jquery.com/jquery.min.js"></script>

<script>
$(function() {
	  $("#dup").on('click',function(e) {
	    var userid = $("#userid").val();	    
	    if (userid === "" || userid.length < 0) {
	      alert("아이디를 먼저 입력해주세요");
	      $("#userid").focus();
	    } else {
	      window.open("/User/DupCheck?userid=" + userid, 'dupcheck' ,"width=500, height=300");
	    }
	  });
	});
</script>
<script>
$(function() {
	  $("#pwd2").on('blur',function(e) {
	    var pwd1   = $("#pwd1").val();	    
	    var pwd2   = $("#pwd2").val();
	    var configMSG = document.getElementById("configMSG");
          var correctColor = "#00ff00";
          var wrongColor ="#ff0000";    
          if (pwd1 === pwd2) {
        		configMSG.style.color = '#0000ff';
        		configMSG.innerHTML = "비밀번호 일치";
        	} else {
        		configMSG.style.color = '#ff0000';
        		configMSG.innerHTML = "비밀번호 불일치";
        	}
	  });
	});
</script>
</head>
<body style="background-color:#D6F3ED">
   <header class="header">  
        <div class="header_logo">
        	<a href="/"><img class="head_logo"  src="/img/logo.png" ></a>
            <h2>회원 가입</h2>               
        </div>        
   </header>
  <div id="main">
  <form action="/User/Write" method="POST">
    <table>
     <tr>
       <td><input type="text" name="userid" id="userid" placeholder="아이디 : 5자 이상입력" minlength="5" maxlength="20"  required/>  <input type="button" value="중복확인" id="dup" ></td>    
     </tr> 
     <tr>
       <td><input type="password" name="passwd" id="pwd1"  placeholder="비밀번호 : 영문숫자조합 5자리이상" minlength="5" maxlength="20"  required/></td>
     </tr> 
     <tr>
       <td><input type="password" name="passwd2" id="pwd2"  placeholder="비밀번호 확인" minlength="5" maxlength="20"  required/>
       <br><span id="configMSG"></span></td>
     </tr> 
     <tr>
       <td><input type="text" name="username" placeholder="이름"/></td>
     </tr> 
     <tr>
       <td><input type="text" name="userbirth" placeholder="생년월일 : 예시 : 19991231 (6자리)" maxlength="8" required/></td>
     </tr> 
     <tr>
       <td><input type="email" name="email" placeholder="이메일: 예시 : funweb@funweb.com (@포함기입)" required/></td>
     </tr> 
     <tr>     
       <td colspan="2">
       <input class="btn btn-primary btn-lg btn-block" type="submit" value="가입" />
       </td>
     </tr> 
  </table>

  
  </form>
  </div>
</body>
</html>
