<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
  <%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>  
    
<section>				
	<!-- 댓글목록 -->
	<div id="replyList">
	<c:forEach  var="reply"  items="${ replyList }">
	  <div class="replytitle"> 
	     작성자 : ${ reply.replywriter}  작성일자 : ${ reply.replydate }
      </div> 
      <div class="col-sm-2">
		<button name="btn_reply_edit" type="button"
				class=" btn btn-sm btn-info" onclick="fn_modify()">수정</button>
		<button name="btn_reply_delete" type="button"
				class="btn btn-sm btn-danger">삭제</button>
	  </div>
	  <div class="replycontent"> 
	     내용 : ${ reply.reply}
      </div>    
	</c:forEach>	
	</div>	

  <form id="replyForm"  method="POST">
  <input type="hidden" name="rno"     value="${ vo.rno }" />
  <input type="hidden" name="idx"     value="${ vo.idx }" />
  <table id="table">
   <tr>
    <th>작성자</th>
    <td><input type="text" name="replywriter" /></td>
   </tr>
   <tr>
    <th>내용</th>
    <td><textarea name="reply"></textarea></td>
   </tr>  
   <tr>
    <td colspan="2">
      <input type="submit"  value="등록" />
    </td>
   </tr> 
  </table>
  </form>   
</section>

   
  
