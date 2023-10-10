 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %> 
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<title>${ menuname } 자료실 내용보기</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link rel="stylesheet" href="/css/common.css" />

<style>
   input  { height: 32px;  }
   
   #table  th                      {  width  : 15%;  }  
   #table  td                      {  width  : 35%;  }  
   #table  tr:nth-of-type(3)  td   {  text-align: right; }  
   #table  tr:nth-of-type(5)       {  height : 300px;  vertical-align: top; }  
   #table  tr:nth-of-type(6)       {  height : 200px;  vertical-align: top; }  
   #table  tr:nth-of-type(7)  td   {  text-align: center;  }  
     
   #replyList    { margin :  20px 0px;  }
   .replytitle   { border :  1px solid black; padding: 5px; border-collapse: collapse; }   
   .replycontent { border :  1px solid black; padding: 5px; border-collapse: collapse;  height:100px;}   
     
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
	   
	     // 폼 제출 시 AJAX를 사용하여 댓글 저장
	  $("#replyForm").submit(function (e) {
	      e.preventDefault(); // 폼의 기본 동작 방지
	      e.stopPropagation();	     
	    //  alert('0');     
	      $.ajax({
	          url: "/Reply/Write", // 댓글 저장 URL
	          type: "POST",	         
	          data: {
	        	  idx         : $("[name='idx']").val(), 
	        	  replywriter : $("[name='replywriter']").val(), 
	        	  reply       : $("[name='reply']").val()	        	  
	          }
	      }).done( function (result) {
	      //    alert('1');
	          // 저장 후 목록을 업데이트하는 함수
	          console.log(result);
	          $("[name='replywriter']").val('');
	          $("[name='reply']").val('');
	          $("#replyList").html('');
	          
	          $.ajax({
	  			url : "/Reply/ReplyList"
	  			,data : { idx : $("[name='idx']").val()  }
	  			,type: "POST"
	          }).done( function(data){
	  				console.log(data);
	  				let str="";
	  				$.each(data, function(index, element) {
	  					str+= '<div class="replytitle">'
	  					    +' 작성자 : '+ element.replywriter +' 작성일자 : ' + element.replydate
	  				        +'</div>'
	  				        +'<div class="col-sm-2">'
	  				        +'<button name="btn_reply_edit" type="button" class=" btn btn-sm btn-info" onclick="fn_modify()">수정</button>'
	  				        +'<button name="btn_reply_delete" type="button" class="btn btn-sm btn-danger">삭제</button>'
	  				        +'</div>'
	  				        +'<div class="replycontent">'
	  				        +' 내용 : '+ element.reply
	  				        +'</div>'
	  				});
	                $('#replyList').html(str);
	  		  })          
	      })
	      .fail(function(data, textStatus, errorThrown){
              console.log("fail in get addr");
              alert(data + ':' + textStatus)
          });
	 //     alert('end')      
	  }); // submit end

 }); //window onload

</script>

</head>
<body>
  <main>
  
    <!-- 메뉴 목록 -->
	<%@include file="/WEB-INF/include/mainmenu.jsp" %>
  
  <table id="table">
   <caption>
     <h2>${ menuname } 자료실 내용 보기</h2>
   </caption>
   
   <tr>
   	<th>글번호</th>
   	<td>${ map.idx }</td>
   	<th>조회수</th>
   	<td>${ map.readcount }</td>
   </tr>
   <tr>
   	<th>작성자</th>
   	<td>${ map.writer }</td>
   	<th>작성일</th>
   	<td>${ map.regdate }</td>
   </tr>
      <tr>
     <td colspan="4">
     <a class="btn btn-primary btn-sm"
        href="/Pds/WriteForm?menu_id=${vo.menu_id}&bnum=0&lvl=0&step=0&nref=0&nowpage=1">새글쓰기</a><span></span>
     <a class="btn btn-primary btn-sm"
        href="/Pds/WriteForm?menu_id=${vo.menu_id}&idx=${vo.idx}&bnum=${vo.bnum}&lvl=${vo.lvl}&step=${vo.step}&nref=${vo.nref}&nowpage=${map.nowpage}">답글쓰기</a><span></span>
     <a class="btn btn-primary btn-sm"
        href="/Pds/UpdateForm?menu_id=${vo.menu_id}&idx=${vo.idx}&nowpage=${map.nowpage}">수정</a><span></span>
     <a class="btn btn-primary btn-sm"
        href="/Pds/Delete?menu_id=${vo.menu_id}&idx=${ vo.idx }&nowpage=${map.nowpage}">삭제</a><span></span>
     <a class="btn btn-primary btn-sm"
        href="/Pds/List?menu_id=${vo.menu_id}&nowpage=${map.nowpage}">목록으로</a><span></span>
     <a class="btn btn-primary btn-sm"
        href="javascript:history.back()">이전으로</a><span></span>
     <a class="btn btn-primary btn-sm"
        href="/">Home</a>
    </td>
   </tr>
   <tr>
    <th>제목</th>
    <td colspan="3">
       ${ vo.title }
    </td>
   </tr>   
   <tr>
    <th>내용</th>
    <td colspan="3">
       ${ vo.cont }
    </td>
   </tr>  
   <tr>
    <th>파일</th>
    <td id="tdfile" colspan="3">
      
      <c:forEach var="file" items="${ fileList }">
        <div>
          <a href="/Pds/download/external/${ file.sfilename }">
            ${ file.filename } 
          </a>        
        </div>
      </c:forEach>   
    </td>
   </tr>           
  </table>
  
  <%@include file="/WEB-INF/views/reply/replylist.jsp" %>
  
  </main>
</body>
</html>


