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
	        <div class="col-sm-2">
	            <button name="btn_reply_delete" type="button" class="btn btn-outline-danger" style="float: right;">삭제</button>
                <button name="btn_reply_edit" type="button" class="btn btn-outline-info btn-edit-reply" style="float: right;"
                    data-rno="${reply.rno}" data-reply="${reply.reply}">수정</button>
	        </div>
	        <div class="col-sm-6 replycontent"> 
	            내용 : ${ reply.reply}
	        </div>    
	        
	        <!-- 수정/삭제 -->
			<div class="replyEditModal" tabindex="-1" role="dialog">
			    <div class="modal-dialog">
			      <form class="replyEditForm" method="post">
			        <div class="modal-content">
			                <div class="modal-header">
			                    <h5 class="modal-title">댓글 수정</h5>
			                </div>
			                <div class="modal-body">
			                    <input type="hidden" class="editRno" name="rno" value="${ reply.rno }" />
			                    <textarea rows="3" class="editReply" name="reply" class="form-control"></textarea>
			                </div>
			                <div class="modal-footer">
			                    <button type='submit' class='btn btn-primary'>저장</button>
			                    <button type='button' class='btn btn-secondary' data-dismiss='modal'>취소</button>
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