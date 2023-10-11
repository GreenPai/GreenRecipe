<%@page import="javax.servlet.descriptor.TaglibDescriptor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<title>레시피 선택</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon1.png">
<link rel="stylesheet"  href="/css/common.css" />
<style>
   .boxMatarial { float:left; width:300px;margin:30px; } 
   input[type="submit"]::before {
     content: '';
     display: block;
     clear: both;
   }

</style>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script>

  window.onload = function() {   
      //  alert('formEl');
        const   formEl        = document.querySelector('#form');
        let     chkList       = null;
         const   meatsEl       = document.querySelector('#meats');
         const   madesEl       = document.querySelector('#mades');
         const   grainsEl      = document.querySelector('#grains');
         const   seefoodsEl    = document.querySelector('#seefoods');
         const   spicesEl      = document.querySelector('#spices');
         const   vegitablesEl  = document.querySelector('#vegitables');
          
        formEl.addEventListener('submit', (e) => {
           e.preventDefault();
        
        //btn1El.addEventListener('click', (e) => {
           let  arrData = [];                  
           meatList = document.querySelectorAll('input[name="meat"]:checked');           
           for(let i=0;i<meatList.length;i++) {
              arrData.push( meatList[i].value );
           }
           meatsEl.value = arrData;
           alert(meatsEl.value);
           
           //-----------------------------------------
           arrData = [];
           madeList = document.querySelectorAll('input[name="made"]:checked');
           for(let i=0;i<madeList.length;i++) {
              arrData.push( madeList[i].value );
           }   
           madesEl.value = arrData;
           alert(madesEl.value);
           //-----------------------------------------
           
           arrData = [];
           grainList = document.querySelectorAll('input[name="grain"]:checked');
           for(let i=0;i<grainList.length;i++) {
              arrData.push( grainList[i].value );
           }   
           grainsEl.value = arrData;
           alert(grainsEl.value);
           //-----------------------------------------
           
           arrData = [];
           seefoodList = document.querySelectorAll('input[name="seefood"]:checked');
           for(let i=0;i<seefoodList.length;i++) {
              arrData.push( seefoodList[i].value );
           }   
           seefoodsEl.value = arrData;
           alert(seefoodsEl.value);
           //-----------------------------------------
           
           arrData = [];
           spiceList = document.querySelectorAll('input[name="spice"]:checked');
           for(let i=0;i<spiceList.length;i++) {
              arrData.push( spiceList[i].value );
           }   
           spicesEl.value = arrData;
           alert(spicesEl.value);
           //-----------------------------------------
           
         arrData = [];
           vegitableList = document.querySelectorAll('input[name="vegitable"]:checked');
           for(let i=0;i<vegitableList.length;i++) {
              arrData.push( vegitableList[i].value );
           }   
           vegitablesEl.value = arrData;
           alert(vegitablesEl.value);
           //-----------------------------------------
           
           
           }
           
        });
     }
        

      
</script>
</head> 
<body>
  <main>
     <h2>재료를 선택하세요(여기)</h2>
     <br>
     <form action="/Cook/Menu" method="POST" id="form">
       <input type="hidden"   id="meats"      name="meats"/>
       <input type="hidden"   id="mades"      name="mades"/> 
       <input type="hidden"   id="grains"     name="grains"/>
       <input type="hidden"   id="seefoods"   name="seefoods"/> 
       <input type="hidden"   id="spices"     name="spices"/> 
       <input type="hidden"   id="vegitables" name="vegitables"/>
        
       <div id="matarialChoice"> 
       <div class="boxMatarial">     
      <h3>육류</h3>
       <hr>
       <c:forEach var="meat" items="${ meatList }">
         <input type="checkbox" name="meat" value="${ meat.menu_name }" id="${ meat.menu_id }" />
         <label for="${ meat.menu_id }">${ meat.menu_name }</label>
         <br>
       </c:forEach>
       </div>
       <div class="boxMatarial">
       <h3> 가공식품 </h3>
       <hr>
       <c:forEach var="made" items="${ madeList }">
         <input type="checkbox" name="made" value="${ made.menu_name }" id="${ made.menu_id }" />
         <label for="${ made.menu_id }">${ made.menu_name }</label>
         <br>
       </c:forEach>
       </div>
       <div class="boxMatarial">
       <h3> 곡물류 </h3>
       <hr>
       <c:forEach var="grain" items="${ grainList }">
         <input type="checkbox" name="grain" value="${ grain.menu_name }" id="${ grain.menu_id }" />
         <label for="${ grain.menu_id }">${ grain.menu_name }</label>
         <br>
       </c:forEach>
       </div>
       <div class="boxMatarial">
       <h3>해산물</h3>
       <hr>
       <c:forEach var="seefood" items="${ seefoodList }">
         <input type="checkbox" name="seefood" value="${ seefood.menu_name }" id="${ seefood.menu_id }" />
         <label for="${ seefood.menu_id }">${ seefood.menu_name }</label>
         <br>
       </c:forEach>
       </div>
       <div class="boxMatarial">
       <h3>향신료</h3>
       <hr>
       <c:forEach var="spice" items="${ spiceList }">
         <input type="checkbox" name="spice" value="${ spice.menu_name }" id="${ spice.menu_id }" />
         <label for="${ spice.menu_id }">${spice.menu_name }</label>
         <br>
       </c:forEach>
       </div>
       <div class="boxMatarial">
       <h3>채소</h3>
       <hr>
       <c:forEach var="vegitable" items="${ vegitableList }">
         <input type="checkbox" name="vegitable" value="${ vegitable.menu_name }" id="${ vegitable.menu_id }" />
         <label for="${ vegitable.menu_id }">${ vegitable.menu_name }</label>
         <br>
       </c:forEach>
       </div>
       </div>
       <input type="submit"   value="전송" />
     </form>
  </main> 
</body>
</html>







