 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %> 
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<title>${ menuname } </title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link rel="stylesheet" href="/css/replyform.css" />


<style>
</style>

<script src="https://code.jquery.com/jquery.min.js"></script>
<script>  
	
$(document).ready(function() {
    fn_reply_list();
    $('.replyEditModal').css('display', 'none');
    $('[name=btn-edit-reply-cancle]').css('display', 'none');
    if (${sessionScope.userid != null || sessionScope.nickname != vo.replywriter}) {
        $('[name=btn-edit-reply-edit]').css('display', 'none');
        $('[name=btn-edit-reply-delete]').css('display', 'none');
    }

    let num = 1;
    $('#btnAddFile').on('click', function() {
        let tag = '<input type="file" name="upfile' + num + '" class="upfile"><br>';
        $('#tdfile').append(tag);
        num++;
    });

    // 폼 제출 시 AJAX를 사용하여 댓글 저장
    $("#replyForm").submit(function(e) {
        e.preventDefault(); // 폼의 기본 동작 방지
        e.stopPropagation();

        $.ajax({
            url: "/Reply/Write", // 댓글 저장 URL
            type: "POST",
            data: {
                idx: $("[name='idx']").val(),
                replywriter: $("[name='replywriter']").val(),
                reply: $("[name='reply']").val()
            }
        }).done(function(result) {
            // 저장 후 목록을 업데이트하는 함수
            console.log(result);
            $("[name='replywriter']").val('');
            $("[name='reply']").val('');
            fn_reply_list(); // 댓글 목록 업데이트 함수 호출
        }).fail(function(data, textStatus, errorThrown) {
            console.log("입력해 주세요.");
            alert(data + ':' + textStatus);
        });
    });

    // 댓글 삭제
    $(document).on('click', '[name=btn_reply_delete]', function() {
        var rno = $(this).data('rno');

        $.ajax({
            url: '/Reply/Delete',
            type: 'POST',
            data: { rno: rno },
        }).done(function(result) {
            console.log(result);
            fn_reply_list(); // 댓글 목록 업데이트 함수 호출
        }).fail(function(data, textStatus, errorThrown) {
            console.log("fail in get addr");
            alert(data + ':' + textStatus);
        });
    });

    // 댓글 수정 모달 표시
    $(document).on('click', '#replyList [name=btn_reply_edit]', function () {
        var rno = $(this).data('rno');
        var reply = $(this).data('reply');

        $('.replyEditForm [name=rno]').val(rno);
        $('.replyEditForm [name=reply]').val(reply);

        $('.replyEditModal').css('display', 'block');
        $('#replyList [name=btn-edit-reply-cancle]').css('display', 'block');
        $('#replyList [name=btn_reply_edit]').css('display', 'none');
    });

    $(document).on('click', '#replyList [name=btn-edit-reply-cancle]', function() {
        $('.replyEditModal').css('display', 'none');
        $('#replyList [name=btn-edit-reply-cancle]').css('display', 'none');
        $('#replyList [name=btn_reply_edit]').css('display', 'block');
    });

 // 댓글 수정 저장
    $(document).on('click', '#replyList [name=btn_reply_edit_save]', function (e) {
        e.preventDefault();
        e.stopPropagation();
        
        var rno = $('.replyEditForm [name=rno]').val();
        var reply = $('.replyEditForm [name=editreply]').val();

        $.ajax({
            url: '/Reply/Update',
            type: 'POST',
            data: { rno: rno, reply: reply },
        }).done(function(result) {
            console.log(result);
            fn_reply_list(); // 댓글 목록 업데이트 함수 호출
        }).fail(function(data, textStatus, errorThrown) {
            console.log("fail in get addr");
            alert(data + ':' + textStatus);
        });
    });
});

function fn_reply_list() {
    $("[name='replywriter']").val('');
    $("[name='reply']").val('');
    $("#replyList").html('');

    $.ajax({
        url: "/Reply/ReplyList",
        data: { idx: $("[name='idx']").val() },
        type: "POST"
    }).done(function(data) {
        console.log(data);
        let str = "";
        $.each(data, function(index, element) {
            str += '<div class="col-4 replytitle"> '
                +' 작성자: ' + element.replywriter + ' 작성일자: ' + element.replydate
                +'</div>'
                +'<div class="col-sm-2 replybody">'
                +'<button name="btn_reply_delete" type="button" class="btn btn-outline-danger" data-rno="' + element.rno + '" style="float: right;">삭제</button>'
                +'<button name="btn_reply_edit" type="button" class="btn btn-outline-info btn-edit-reply" style="float: right;" '
                +'data-rno="' + element.rno + '" data-reply="' + element.reply + '">수정</button>'
                +'<button type="button" name="btn-edit-reply-cancle" class="btn btn-outline-warning" data-dismiss="modal" style="float: right;">취소</button>'
                +'</div>'
                +'<div class="col-6 replycontent">'
                +'<pre class="replyreplyrerere">' + element.reply + '</pre>'
                +'</div>'
                +'<div class="replyEditModal" tabindex="-1" role="dialog">'
                +'<div class="modal-dialog">'
                +'<form class="replyEditForm" method="post">'
                +'<div class="modal-content">'
                +'<div class="modal-header">'
                +'<h5 class="modal-title">댓글 수정</h5>'
                +'</div>'
                +'<div class="modal-body">'
                +'<input type="hidden" class="editRno" name="rno" value="' + element.rno + '" />'
                +'<textarea rows="3" class="editreply" name="editreply" class="form-control"></textarea>'
                +'</div>'
                +'<div class="modal-footer">'
                +'<button name="btn_reply_edit_save" type="button" class="btn btn-primary">저장</button>'
                +'</div>'
                +'</div>'
                +'</form>'
                +'</div>'
                +'</div>'
        });
        $('#replyList').html(str);
        $('.replyEditModal').css('display', 'none');
        $('[name=btn-edit-reply-cancle]').css('display', 'none');
    }).fail(function(data, textStatus, errorThrown) {
        console.log("오류발생! 오류발생!");
        alert(data + ':' + textStatus);
    });
}
	</script>
	<script>
	function goodCheck() {
	    var idx = $('[name=idx]').val();
	    var userid = $('.left-content [name=userid]').val();

	    // 중복 추천 확인을 위해 checkBoom 함수 호출
	    checkBoom(idx, userid, function(isDuplicate) {
	        if (isDuplicate) {
	            alert("이미 추천한 게시물입니다.");
	        } else {
	            // 중복이 아닐 경우 추천 작업 수행
	            $.ajax({
	                url: "/Pds/BoardBoomUp",
	                type: "POST",
	                data: { 
	                	idx    : idx,
	                	userid : '${sessionScope.userid}'
	                },
	                success: function(result) {
	                    alert("추천했습니다");
	                    $('#goodCheck').html(result.boardboomup);
	                },
	                error: function(e) {
	                    alert("추천 작업 중 오류가 발생했습니다.");
	                }
	            });
	        }
	    });
	}

	// 중복 추천 확인을 수행하는 함수
	function checkBoom(idx, userid, callback) {
	    $.ajax({
	        url: "/Pds/PdsBoomCheck",
	        type: "POST",
	        data: {
	            idx: idx,
	            userid: userid
	        },
	        success: function(result) {
	            if (result) {
	                callback(true);
	            } else {
	                callback(false); 
	            }
	        },
	        error: function() {
	            alert("중복 추천 확인 중 오류가 발생했습니다.");
	        }
	    });
	}

		
	    // 비추천
		function badCheck() {
			var idx = $("[name='idx']").val();
		    $.ajax({
		    	url: "/Pds/BoardBoomDown",
		        type: "POST",
		        data: { idx: idx },
		        success: function(result) {
		            alert("비추천했습니다.");
		            $('#badCheck').html(result.boardboomdown);
		        }
		    });
		    
		}
</script>
</head>
<body>
  <main>
  
    <!-- 메뉴 목록 -->
	<%@include file="/WEB-INF/include/mainmenu.jsp" %>
  
  <table id="tablereply">   
   <tr>
     <td class="titlereply" colspan="4">${vo.title}</td>    
   </tr> 
   <tr class="subcontentdata">
     <td class="writerreply">${vo.writer}</td>
     <td class="boomcheck">
      <input type="button" value="👍" onclick="goodCheck()"/><label id="goodCheck" >${vo.boardboomup}</label> 
      <input type="button" value="👎" onclick="badCheck()"/><label id="badCheck" >${vo.boardboomdown}</label>  
     </td>
     <td class= "subreply">조회수: ${vo.readcount} 작성일: ${vo.regdate}</td>
   </tr> 
   <tr>
     <td class= "contreply" colspan= "4"><pre>${ vo.cont }</pre></td>
   </tr>
      
   <tr>
     <td class="fileplus">첨부파일</td>
     <td class="filelist" colspan="3">
   	    <c:forEach var="file"  items="${ fileList }" >
   	       <div>
   	         <a href="/Pds/download/external/${ file.sfilename }">
   	           ${ file.filename }
   	         </a>   	       
   	       </div>
   	    </c:forEach>  
     </td>  
   </tr>   
   <tr>     
     <td colspan="4" class="buttons">
     <c:if test="${sessionScope.userid != null && sessionScope.userid == vo.writer}">
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
     </c:if>
     <a class="btn btn-primary btn-sm"
        href="javascript:history.back()">이전으로</a><span></span>
     <a class="btn btn-primary btn-sm"
        href="/">Home</a>
     </td>
   </tr> 
  </table>
 <%@include file="/WEB-INF/views/reply/replylist.jsp" %>
  </main>
</body>
</html>