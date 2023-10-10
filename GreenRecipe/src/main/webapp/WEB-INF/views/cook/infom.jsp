<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/img/favicon1.png">
<title>Insert title here</title>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script>
  window.onload = function() {
	 const  btnEl  = document.getElementById('getData');
	 const  div1El = document.getElementById('div1');
	 btnEl.addEventListener('click', function() {
		 let url = '/foodInform';   // servlet 사용
		// let url = 'http://openapi.foodsafetykorea.go.kr/api/70e153f2e8f64995941b/I2790/json/1/50'; 
		 axios( {
			 url    : url,
			 method : 'GET',
			 params : {
		//       encoding 서버스키는 cors 발생 - 자바를 이용해야한다
				 serviceKey : 'X5Ow2Q7%2F1YLN6F2IGV2I9%2F1G9A5aZ2eNuiJnwQvTm8m7w%2FDEh2jJsBMatEA%2FFBy2dM5%2FoJASYTxYqsoEukRzvQ%3D%3D',
		//       decoding 서버스키는 cors 발생하지 않음
		//		 serviceKey : 'HPG/iUcz/t/Q8HAFjrKL9sP2JYkLOIIgbnEzvj9enzRYy+jXWDidxABqUgD85CcU/UhqdtU2SPY+tq97nfbRxw==',  //decoding
				 numOfRows  : 30,
				 pageNo     : 1,
				 resultType : 'json'
			 }
		 })
		   .then(( obj ) => {
			 //  console.dir( obj.data );  // getGalmaetGilInfo -> body -> items
			   let  arr =  obj.data.getPdsRestControllerInfo.body.items.item;
			   console.log(arr);
			   let  html  = '';
			   arr.forEach( (item) => {				   
				   html += `<ul>`;
				   html += `<li>식품이름                : ${item.DESC_KOR}</li>`;
				   html += `<li>1회제공량               : ${item.SERVING_WT}</li>`;
				   html += `<li>열량(kcal)(1회제공량당)   : ${item.NUTR_CONT1}</li>`;
				   html += `<li>탄수화물(g)(1회제공량당)   : ${item.NUTR_CONT2}</li>`;
				   html += `<li>단백질(g)(1회제공량당)     : ${item.NUTR_CONT3}</li>`;
				   html += `<li>지방(g)(1회제공량당)      : ${item.NUTR_CONT4}</li>`;
				   html += `<li>당류(g)(1회제공량당)      : ${item.NUTR_CONT5}</li>`;
				   html += `<li>나트륨(mg)(1회제공량당)    : ${item.NUTR_CONT6}</li>`;
				   html += `<li>콜레스테롤(mg)(1회제공량당) : ${item.NUTR_CONT7}</li>`;
				   html += `<li>포화지방산(g)(1회제공량당)  : ${item.NUTR_CONT8}</li>`;
				   html += `<li>트랜스지방(g)(1회제공량당)  : ${item.NUTR_CONT9}</li>`;
				   html += `<li>구축년도                : ${item.BGN_YEAR}</li>`;
				   html += `<li>가공업체                : ${item.ANIMAL_PLANT}</li>`;
				   	
				  
				   html += `</ul>`;
			   })			   
			   div1El.innerHTML = html; 
		   })
		   .catch((error) => {
			   alert(error);
		   })
	 } )
  }
</script>
</head>
<body>
   <h2>레시피 가져오기</h2>
   <button id="getData">가져오기</button>
   <div id="div1"></div>
</body>
</html>



</body>
</html>