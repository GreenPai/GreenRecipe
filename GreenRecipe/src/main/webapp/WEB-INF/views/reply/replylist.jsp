<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
  <%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>  
    
<section>				
	<!-- 댓글목록 -->
	<div class="row" id="replyList">
	    <c:forEach  var="reply"  items="${ replyList }">
	        <div class="col-sm-4 replytitle"> 
	            작성자 : ${ reply.replywriter}  작성일자 : ${ reply.replydate }
	        </div> 
	        <div class="col-sm-6 replycontent"> 
	            내용 : ${ reply.reply}
	        </div>    
	        <div class="col-sm-2">
	            <button name="btn_reply_delete" type="button" class="btn btn-outline-danger" style="float: right;">삭제</button>
	            <button name="btn_reply_edit" type="button" class="btn btn-outline-info" style="float: right;">수정</button>
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
  
  <div class="modal fade" id="replyedit" role="dialog">
    <div class="modal-dialog">
	<!-- Modal content-->
	<div class="modal-content">
		<form id="replyupdate"  method="post">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">×</button>
				<h4 class="modal-title">댓글수정</h4>
			</div>
			<div class="modal-body">
				<input type="hidden" name="rno" value="">
				<textarea rows="3" name="reply" class="form-control"></textarea>
			</div>
			<div class="modal-footer">
				<button id="btn_replyupdate" type="button"
					class="btn btn-sm btn-info">저장</button>
				<button type="button" class="btn btn-default btn-sm"
					data-dismiss="modal">닫기</button>
			</div>
		</form>
	  </div>
    </div>
</div>
</section>

   
  
