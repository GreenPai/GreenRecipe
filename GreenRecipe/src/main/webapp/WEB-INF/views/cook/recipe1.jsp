<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="images/favicon1.png">
<title>Insert title here</title>
<style>
  ul, li {
     list-style-type:none;
  }
  ul { border:1px solid black; 
     border-radius :10px;
     padding:20px; margin:20px;
  }
</style>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script>
  window.onload = function() {
	 const  btnEl  = document.getElementById('getData');
	 const  div1El = document.getElementById('div1');
	 btnEl.addEventListener('click', function() {
		 let url = '/cookRecipe';   // servlet 사용
		// let url = 'https://openapi.foodsafetykorea.go.kr/api/70e153f2e8f64995941b/COOKRCP01/xml/1/50';
		 axios( {
			 url    : url,
			 method : 'GET',
			 params : {
		//       encoding 서버스키는 cors 발생 - 자바를 이용해야한다
				 serviceKey : '70e153f2e8f64995941b',
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
				   html += `<li>일련번호          : ${item.RCP_SEQ}</li>`;
				   html += `<li>메뉴명            : ${item.RCP_NM}</li>`;
				   html += `<li>조리방법          : ${item.RCP_WAY2}</li>`;				
				   html += `<li>요리종류          : ${item.RCP_PAT2}</li>`;				
				   html += `<li>중량(1인분)       : ${item.INFO_WGT}</li>`;				
				   html += `<li>요리종류          : ${item.INFO_ENG}</li>`;				
				   html += `<li>열량             : ${item.RCP_PAT2}</li>`;				
				   html += `<li>탄수화물          : ${item.RCP_CAR}</li>`;				
				   html += `<li>단백질            : ${item.INFO_PRO}</li>`;				
				   html += `<li>지방             : ${item.RCP_FAT}</li>`;				
				   html += `<li>나트륨            :  ${item.RCP_NA}</li>`;				
				   html += `<li>해쉬태그          : ${item.HASH_TAG}</li>`;				
				   html += `<li>이미지경로(소)     : ${item.ATT_FILE_NO_MAIN}</li>`;				
				   html += `<li>이미지경로(대)     : ${item.ATT_FILE_NO_MK}</li>`;				
				   html += `<li>재료정보          : ${item.RCP_PARTS_DTLS}</li>`;				
				   html += `<li>만드는법_01       : ${item.MANUAL01}</li>`;				
				   html += `<li>만드는법_이미지_01  : ${item.MANUAL_IMG01}</li>`;				
				   html += `<li>만드는법_02       : ${item.MANUAL02}</li>`;				
				   html += `<li>만드는법_이미지_02  : ${item.MANUAL_IMG021}</li>`;				
				   html += `<li>만드는법_03       : ${item.MANUAL03}</li>`;				
				   html += `<li>만드는법_이미지_03  : ${item.MANUAL_IMG03}</li>`;				
				   html += `<li>만드는법04        : ${item.MANUAL04}</li>`;				
				   html += `<li>만드는법04        : ${item.MANUAL_IMG04}</li>`;				
				   html += `<li>만드는법_05       : ${item.MANUAL05}</li>`;				
				   html += `<li>만드는법_이미지_05  : ${item.MANUAL_IMG05}</li>`;				
				   html += `<li>만드는법_06       : ${item.MANUAL06}</li>`;				
				   html += `<li>만드는법_이미지_06 : ${item.MANUAL_IMG06}</li>`;				
				   html += `<li>만드는법_07      : ${item.MANUAL07}</li>`;				
				   html += `<li>만드는법_이미지_07 : ${item.MANUAL_IMG07}</li>`;				
				   html += `<li>만드는법_08      : ${item.MANUAL08}</li>`;				
				   html += `<li>만드는법_이미지_08 : ${item.MANUAL_IMG08}</li>`;				
				   html += `<li>만드는법_09      : ${item.MANUAL09}</li>`;				
				   html += `<li>만드는법_이미지_09 : ${item.MANUAL_IMG09}</li>`;				
				   html += `<li>만드는법_10      : ${item.MANUAL10}</li>`;				
				   html += `<li>만드는법_이미지_10 : ${item.MANUAL_IMG10}</li>`;				
				   html += `<li>만드는법_11      : ${item.MANUAL11}</li>`;				
				   html += `<li>만드는법_이미지_11 : ${item.MANUAL_IMG11}</li>`;				
				   html += `<li>만드는법_12      : ${item.MANUAL12}</li>`;				
				   html += `<li>만드는법_이미지_12 : ${item.MANUAL_IMG12}</li>`;				
				   html += `<li>만드는법_13      : ${item.MANUAL13}</li>`;				
				   html += `<li>만드는법_이미지_13 : ${item.MANUAL_IMG13}</li>`;				
				   html += `<li>만드는법_14      : ${item.MANUAL14}</li>`;				
				   html += `<li>만드는법_이미지_14 : ${item.MANUAL_IMG14}</li>`;				
				   html += `<li>만드는법_15      : ${item.MANUAL15}</li>`;				
				   html += `<li>만드는법_이미지_15 : ${item.MANUAL_IMG15}</li>`;
				   html += `<li>만드는법_16      : ${item.MANUAL16}</li>`;				
				   html += `<li>만드는법_이미지_16 : ${item.MANUAL_IMG16}</li>`;		
				   html += `<li>만드는법_17      : ${item.MANUAL17}</li>`;				
				   html += `<li>만드는법_이미지_17 : ${item.MANUAL_IMG17}</li>`;		
				   html += `<li>만드는법_18      : ${item.MANUAL18}</li>`;				
				   html += `<li>만드는법_이미지_18 : ${item.MANUAL_IMG18}</li>`;
				   html += `<li>만드는법_19      : ${item.MANUAL19}</li>`;				
				   html += `<li>만드는법_이미지_19 : ${item.MANUAL_IMG19}</li>`;		
				   html += `<li>만드는법_20      : ${item.MANUAL20}</li>`;				
				   html += `<li>만드는법_이미지_20 : ${item.MANUAL_IMG20}</li>`;	
				   html += `<li>저감 조리법 TIP   : ${item.RCP_NA_TIP}</li>`;	
				  
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





