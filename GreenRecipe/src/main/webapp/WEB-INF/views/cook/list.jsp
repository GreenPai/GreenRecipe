<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon1.png">
<link rel="stylesheet" href="/css/common.css" />
<title>Insert title here</title>
<style>
 .div1 {    border:1px solid blue; 
            border-radius :10px;
            padding:20px; margin:70px; width: 15%;
            float: left;
            margin: 10px;
       }  
.div2 {
       clear: both;
       text-align: center;
       
}     
   
</style>
</head>
<body>
 
    <h2>레시피 목록</h2>
    <c:forEach  var="user"  items="${ recipeList  }">
    <ul>
       <li>메뉴이름 : ${ cook.re_title }</li>
    </ul>
    </c:forEach>    
    
    <div><a href="/">Home</a></div>
    
   
  <form action="#"  method="post">
   <div class="div1">
                
        <div>육류&단백질</div>
        <br>
        <input type="checkbox" id="checkbox1" name="checkbox1" value="value1"/>
        <label for="checkbox1">돼지고기</label><br/>
        
        <input type="checkbox" id="checkbox2" name="checkbox2" value="value2"/>
        <label for="checkbox2">소고기</label><br/>
        
        <input type="checkbox" id="checkbox3" name="checkbox3" value="value3"/>
        <label for="checkbox3">닭고기</label><br/>
        
        <input type="checkbox" id="checkbox4" name="checkbox4" value="value4"/>
        <label for="checkbox4">오리고기</label><br/>
        
        <input type="checkbox" id="checkbox5" name="checkbox5" value="value5"/>
        <label for="checkbox5">계란</label><br/>
        
        <input type="checkbox" id="checkbox6" name="checkbox6" value="value6"/>
        <label for="checkbox6">만두</label><br/>
        
        <input type="checkbox" id="checkbox7" name="checkbox7" value="value7"/>
        <label for="checkbox7">햄(스팸)</label><br/>
        
        <input type="checkbox" id="checkbox8" name="checkbox8" value="value8"/>
        <label for="checkbox8">참치캔</label><br/>
        
        <input type="checkbox" id="checkbox9" name="checkbox9" value="value9"/>
        <label for="checkbox9">소시지</label><br/>
        
        <input type="checkbox" id="checkbox10" name="checkbox10" value="value10"/>
        <label for="checkbox10">Option 10</label><br/>
        
        </div>
     
         <div class="div1">           
        <div>채소</div>
        <br>
        <input type="checkbox" id="checkbox1" name="checkbox1" value="value1"/>
        <label for="checkbox1">대파</label><br/>
        
        <input type="checkbox" id="checkbox2" name="checkbox2" value="value2"/>
        <label for="checkbox2">마늘</label><br/>
        
        <input type="checkbox" id="checkbox3" name="checkbox3" value="value3"/>
        <label for="checkbox3">고추</label><br/>
        
        <input type="checkbox" id="checkbox4" name="checkbox4" value="value4"/>
        <label for="checkbox4">양파</label><br/>
        
        <input type="checkbox" id="checkbox5" name="checkbox5" value="value5"/>
        <label for="checkbox5">당근</label><br/>
        
        <input type="checkbox" id="checkbox6" name="checkbox6" value="value6"/>
        <label for="checkbox6">김치</label><br/>
        
        <input type="checkbox" id="checkbox7" name="checkbox7" value="value7"/>
        <label for="checkbox7">감자</label><br/>
        
        <input type="checkbox" id="checkbox8" name="checkbox8" value="value8"/>
        <label for="checkbox8">고구마</label><br/>
        
        <input type="checkbox" id="checkbox9" name="checkbox9" value="value9"/>
        <label for="checkbox9">상추</label><br/>
        
        <input type="checkbox" id="checkbox10" name="checkbox10" value="value10"/>
        <label for="checkbox10">깻잎</label><br/>
        </div>
        <!-- 추가적인 체크박스들을 여기에 추가할 수 있습니다 -->
        <div class="div2"><button type="submit">등록하기</button></div>
    </form> 
  

  
</body>
</html>










