<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@taglib  prefix="c"   uri="http://java.sun.com/jsp/jstl/core"   %>
  <%@taglib  prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>  
    
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon.ico">
<link rel="stylesheet"  href="/css/boardform.css" />
<style>

 #PdsList  td:nth-of-type(1) { width:70px;  text-align: center; font-weight: bold;}
 #PdsList  td:nth-of-type(2) { width:300px; text-align: left; }
 #PdsList  td:nth-of-type(3) { width:80px;  text-align: center; }
 #PdsList  td:nth-of-type(4) { width:80px;  text-align: center; }
 #PdsList  td:nth-of-type(5) { width:100px; text-align: center; }
 #PdsList  td:nth-of-type(6) { width:100px; text-align: center; }
 

</style>

<script></script>
</head>
<body>
  <main>    
    <!-- 메뉴 목록 -->
	<%@include file="/WEB-INF/include/mainmenu.jsp" %>

    <!--  자료실 목록 -->
    <table id="PdsList" style="background-color: white; margin: 0 auto;">
      <caption>
        <h2>${ map.menuname }</h2>
      </caption>
   	  <tr style="background-color: aliceblue;">
   		<td><b>번호<b></td>
   		<td><b>제목<b></td>
   		<td><b>작성자<b></td>
   		<td><b>작성일<b></td>
   		<td><b>조회수<b></td>
   		<td><b>좋아요<b></td>
   	  </tr>
   	  
   	 <c:forEach  var="pds" items="${ pdsList }">
   	 <tr>
   	    <!-- 번호 -->
   	    <td>
   	      <c:if  test="${ pds.lvl == 0 }" >  
   	        ${ pds.idx }
   	      </c:if>
   	    </td>
   	    
   	    <!-- 제목 -->
   		<td>
   		  <b style="display:inline-block;width:${(pds.lvl-1)*20}px"></b> 
   		  <c:choose>
   		    <c:when test="${ pds.lvl eq 0 }">
   		       <a href="/Pds/View?idx=${ pds.idx }">
   		       ${ pds.title }
   		       <b>
   		         <c:choose>
   		           <c:when test="${ pds.replycount ne 0 }"> 
   		              [${ pds.replycount }]
   		           </c:when>
   		         <c:otherwise>
   		             &nbsp;
   		         </c:otherwise> 
   		          </c:choose>
   		       </b>
   		       </a>
   		    </c:when>
   		    <c:otherwise>
   		      <a href="/Pds/View?menu_id=${ pds.menu_id }&idx=${ pds.idx }">
   		       [답글] ${ pds.title }   
   		      <b>
   		       <c:choose>
   		           <c:when test="${ pds.replycount ne 0 }"> 
   		              [${ pds.replycount }]
   		           </c:when>
   		         <c:otherwise>
   		             &nbsp;
   		         </c:otherwise> 
   		          </c:choose>
   		          </b>
   		          </a>
   		    </c:otherwise>
   		  </c:choose>    
   		</td>
   		  
   		<!-- 작성자 -->   		
   		<td>${ pds.writer }</td>
   		
   		<!-- 작성일 -->
   		<td>${fn:substring( pds.regdate, 0, 10 ) }</td>
   		
   		<!-- 조회수 -->
   		<td>${ pds.readcount }</td>
   		
   		<td>${ pds.boardboomup}</td>
   	 </tr>
   	 </c:forEach>
   	  <tr>
      	<td colspan="6" style="text-align:right">
      	  <c:if test="${sessionScope.userid != null}">
      	    <a href="/Pds/WriteForm?menu_id=${ map.menu_id }&bnum=0">[글쓰기]</a>
      	  </c:if>
      	</td>
      </tr>
    </table>
      <!-- 페이징 리스트 -->  
  <%@include file="/WEB-INF/include/paging.jsp" %>
  
  </main>
</body>
</html>








