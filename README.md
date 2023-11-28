# 거꾸로 레시피 프로젝트
재료를 입력하면 레시피를 출력해주는 웹사이트 구현

## 개발 주제
배달비가 증가함에 따라서 직접 만들어 먹는 자취생들이 증가하고 있습니다. 
저희는 자취생들이 레시피를 검색해서 가진 재료를 비교하는 것이 아닌 재료를 입력해서 만들 수 있는 레시피를
보여주는 웹 사이트를 구현했습니다.

## 개발 일정
2023-9-28 ~ 2023-10-19 

## 팀원
- 우상호(팀장): 데이터 베이스, 추천레시피 기능 구현, 유저레시피 등록 기능,  로그인 기능 구현
- 홍지원(팀원): 데이터 베이스,  재료등록 페이지 및 기능 구현, 조회수 기능, 이메일 전송 기능 구현
- 고상현(팀원): 데이터 베이스,  회원가입 기능 구현, CRUD 기능, 추천 & 비추천 기능 구현



## 기술 스택
- Front-end: HTML, CSS, JavaScript, jQuery, bootstrap, Ajax
- Back-end: Spring(STS3), JAVA
- DB: Oracle, mybatis
- Tool: maven, github, kakao oven
  
## ERD

![image](https://github.com/GreenPai/GreenRecipe/assets/145432813/57085087-08dd-416e-bf10-de66634cd374)


# 주요 기능
### 데이터 베이스
- 레시피 데이터베이스 생성- 식약처 api 이용
- 재료 데이터베이스 생성
- 유저 데이터베이스 생성

###  재료 등록 & 화면 기능
- 가지고 있는 재료 등록
- 재료가 포함된 레시피 출력

### 추천 레시피 & 나라별 레시피 & 유저 레시피
- 500여개이 레시피 중 조회수가 많은 순서대로 Top 12를 선정해 화면에 보여줌
- 한, 중, 일, 양식의 레시피를 모아서 보여줌
- 사용자가 레시피를 직접 업로드

### 회원가입 및 로그인 기능
- 비밀번호 유효성 체크
- 로그인 후 유저 레시피 기능 및 추천 기능 사용 가능

### 게시판 기능
- 페이징을 통해서 페이지를 나눔
- 자랑 게시판, 공유 게시판등 로그인 후 게시판 이용 가능
- 계랑 팁, 건강 팁 페이지 구현하여 사용자가 계량하며 계산기를 통해 칼로리를 계산하는데 도움을 줌 


# 레시피 기능

### 재료 입력

![image](https://github.com/GreenPai/GreenRecipe/assets/145432813/7cd9094a-0642-4c23-89ab-b2bf429c36f3)

### 하나라도 선택을 하지 않는다면 1개 이상 선택하도록 안내문구 구현
![image](https://github.com/GreenPai/GreenRecipe/assets/145432813/92ae398e-ac11-4016-bd0d-52b4b3355119)

### 관련 레시피 출력
![image](https://github.com/GreenPai/GreenRecipe/assets/145432813/aa720e05-adc7-4812-b3c8-2f358b01bb57)

### 레시피 상세 페이지
![image](https://github.com/GreenPai/GreenRecipe/assets/145432813/ba79ba7d-b0f0-4573-8a75-7251a2ae0c92)
![image](https://github.com/GreenPai/GreenRecipe/assets/145432813/8b5de16e-567f-46cd-b7ba-ff77eeb4d215)

### 유저 레시피 (레시피 관련 정보를 입력 후 다음 단계 버튼을 눌러서 Step을 증가)
![image](https://github.com/GreenPai/GreenRecipe/assets/145432813/6af9cb39-dfb7-4aa1-9c4c-a28192ba8fa8)
![image](https://github.com/GreenPai/GreenRecipe/assets/145432813/527f780d-be34-461c-bf53-7ed791c0bd7c)


### 추천 레시피(500 여개의 레시피 중 조회수가 많은 순서대로 출력)
![image](https://github.com/GreenPai/GreenRecipe/assets/145432813/fe9d8953-53b6-4a09-8bff-b4d37f775121)

### 나라 별 레시피(한식, 중식, 일식, 양식)
![image](https://github.com/GreenPai/GreenRecipe/assets/145432813/213b0008-5fdc-47ec-9101-9713697fd1ac)
![image](https://github.com/GreenPai/GreenRecipe/assets/145432813/16a77833-1a1a-4627-8c82-e26d2d3dc346)
![image](https://github.com/GreenPai/GreenRecipe/assets/145432813/e4f77497-48cf-4f53-8b4e-97578b3595d3)
![image](https://github.com/GreenPai/GreenRecipe/assets/145432813/bf9ea34b-1c37-4db9-9e01-d0a105faa718)






