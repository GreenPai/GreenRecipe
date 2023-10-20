<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
  <%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>  
    
<section>				
	<!-- 댓글목록 -->
    <div class="row" id="replyList">
	    <c:forEach  var="reply"  items="${ replyList }">
	        <div class="col-4 replytitle"> 
	            작성자 : ${ reply.replywriter}  작성일자 : ${ reply.replydate }
	        </div> 
	        <div class="col-sm-2 replybody">
	            <button name="btn_reply_delete" type="button" class="btn btn-outline-danger" style="float: right;">삭제</button>
                <button name="btn_reply_edit" type="button" class="btn btn-outline-info btn-edit-reply" style="float: right;"
                    data-rno="${reply.rno}" data-reply="${reply.reply}">수정</button>
	            <button type="button" name="btn-edit-reply-cancle" class="btn btn-outline-warning" data-dismiss="modal" style="float: right;">취소</button>
	        </div>
	        <div class="col-sm-6 replycontent"> 
	            <pre class="replyreplyrerere">${ reply.reply}</pre>
	        </div>    
	        
	        <!-- 댓글 수정 -->
			<div class="replyEditModal" tabindex="-1" role="dialog">
			    <div class="modal-dialog">
			      <form class="replyEditForm" method="post">
			        <div class="modal-content">
			                <div class="modal-header">
			                    <h5 class="modal-title">댓글 수정</h5>
			                </div>
			                <div class="modal-body">
			                    <input type="hidden" class="editRno" name="rno" value="${ reply.rno }" />
			                    <textarea rows="3" class="editreply" name="reply" class="form-control"></textarea>
			                </div>
			                <div class="modal-footer">
			                    <button name="btn_reply_edit_save" type="button" class="btn btn-primary">저장</button>
			                </div>
			           </div>
			       </form>
			    </div>
			</div>
	    </c:forEach>	
	</div>
	
  <form id="replyForm"  method="POST">
  <input type="hidden" name="rno"     value="${ vo.rno }" />
  <input type="hidden" name="idx"     value="${ vo.idx }" />
  <table id="replytable">
   <tr>
    <th style="width: 5%; height: 20px;">작성자</th>
    <td><input type="text" name="replywriter" style="float: left; height:25px; width: 50%"/><c:if test="${sessionScope.userid != null}"><input type="submit"  value="등록" style="float: right;" /></c:if></td>
   </tr>
   <tr>
    <td colspan="2"><textarea name="reply" placeholder="로그인 후 이용해주세요."></textarea></td>
   </tr> 
  </table>  
  </form> 
  
</section>