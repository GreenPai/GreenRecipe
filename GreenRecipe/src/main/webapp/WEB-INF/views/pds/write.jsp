<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %> 
   
    
<!DOCTYPE html>
<html>
<head>
<title>자료실 등록</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link rel="stylesheet" href="/css/writeform.css" />

<style>
   input  { height: 32px;  }
   
   #table   th       {  width : 20%; background-color: aliceblue; }  
   #table   td       {  width : 80%; background-color: white; }  
   input[type=text]  {  width : 100%;  }  
   textarea          {  width : 100%; height: 300px; padding:10px; }  
</style>

<script src="https://code.jquery.com/jquery.min.js"></script>

<script>
   
   $( function() {
	   let num = 1;
	   $('#btnAddFile').on('click', function() {		   
		   let tag = '<input type="file" name="upfile' + num + '" class="upfile" /><br>';
		   $('#tdfile').append( tag );
		   num++;
	   })
   })

</script>

</head>
<body style="background-color:#D6F3ED">
  <main>
  
  <!-- 메뉴 목록 -->
	<%@include file="/WEB-INF/include/mainmenu.jsp" %>

  <form action="/Pds/Write" method="POST" 
        enctype="multipart/form-data"   >   
  <input type="hidden"  name="menu_id" value="${ map.menu_id }" />
  <input type="hidden"  name="nowpage" value="${ map.nowpage }" />
  <input type="hidden"  name="bnum"    value="${ map.bnum    }" />
  <input type="hidden"  name="lvl"     value="${ map.lvl     }" />
  <input type="hidden"  name="step"    value="${ map.step    }" />
  <input type="hidden"  name="nref"    value="${ map.nref    }" /> 
  <input type="hidden"  name="parent"  value="${ map.idx     }" /> 
 
  <table id="table">  
   <caption>
     <c:choose>
      <c:when test="${ map.bnum == 0 }">
  	    <h2>${ map.menuname } 새글 등록</h2>
  	  </c:when>
  	  <c:otherwise>  	     
  	    <h2>답글 등록</h2>
  	  </c:otherwise>
  	 </c:choose>   	     
   </caption>
   <tr>
     <th>제목</th>
     <td><input type="text" name="title" value="${ vo.title }"/></td>
   </tr> 
   <tr>
     <th>글쓴이</th>
     <td><input type="text" name="writer" value="<%= session.getAttribute("nickname") %>"></td>
   </tr> 
   <tr>
     <th>내용</th>
     <td><textarea name="cont" maxlength="1000">${ vo.cont }</textarea></td>
   </tr> 
   <tr>
     <th>파일</th>
    <td id="tdfile">
      <input type="button" id="btnAddFile" value="파일 추가(최대 100M Byte)" /><br> 
      <input type="file"   name="upfile" class="upfile" /><br>
    </td>
   </tr>
   <tr>
    <td colspan="2">
      <input type="submit"  value="등록" />
    </td>
   </tr>
    
  </table>
  </form> 
  
  </main>
</body>
</html>
