<b style="font-size:20px;">목차</b> <br>
1. 프로젝트 소개 <br>
2. 개발 환경 <br>
3. MVC패턴, 필요한.jar 파일 <br>
4. 페이지별 기능 <br> 
5. 프로젝트 소감 <br>

<hr>

<b>어맛(어디가 맛집이고) 소개</b> <br>
  1) 어맛 메인 서비스 - 서면의 맛집 리뷰 공유 서비스 <br>
     어맛리뷰 : 음식점 리뷰들이 한 곳에 모여있는 곳 <br>
     식당 리스트 : 검색, 카테고리별로 식당 찾기 <br>
     지도로 찾기 : 지도를 이용해 음식점 위치 확인과 리뷰를 볼 수 있음 <br>
                   
  2) 어맛 서브 서비스 <br>
     [커뮤니티] 어맛 메이트 : 혼밥을 못하시는 분들을 위해 밥메이트 찾는 게시판 <br> 
                어맛인들의 tmi : 자유로운 의사소통을 위한 게시판 <br>
                어맛 레시피 : 사용자들만의 레시피 공유 게시판 <br>
     [이벤트]   어맛 룰렛 : 음식 고르기 힘든 사용자를 위한 룰렛 <br>
  
  3) 어맛 참고 사이트 <br>
     YELP - https://www.yelp.com/
    
  <hr>
  
 <b>개발 환경</b> <br> 
 <table>
  <tr>
    <th>개발환경</th>
    <td>Java(JDK 1.8), JSP, JavaScript, jQuery, SQL, CSS, Bootstrap</td>
  </tr>
  <tr>
    <th>서버</th>
    <td>Apache tomcat 8.0</td>
  </tr>
  <tr>
    <th>DB</th>
    <td>MySQL</td>
  </tr>
  <tr>
    <th>통합개발환경(IDE)</th>
    <td>Eclipse 2020 – 03</td>
  </tr>
  <tr>
    <th>사용 API</th>
    <td>Naver Login, Google Login, Kakao Login, Kakao Map, Daum 주소 API</td>
  </tr>
  <tr>
    <th>형상 관리</th>
    <td>Git</td>
  </tr>
  <tr>
    <th>협업 도구</th>
    <td>Google Drive, GitHub, Notion, Kakao Talk, Gather Town</td>
  </tr>
</table>

<hr>
<b>MVC패턴 사용</b> <br>
1) action - Action 클래스(= Controller 역할) <br>
2) controller - FrontController 클래스(= 초기 진입점) <br>
3) dao - 자바빈 중 비즈니스 로직 처리 역할(= DB 작업)을 수행할 DAO 클래스 <br>
4) db - 데이터베이스 연결 작업 등을 수행하는 JdbcUtil 클래스 <br>
5) svc - Service 클래스(DB 작업 처리 결과 판별 및 트랜잭션 처리 담당) <br>
6) vo - 자바빈 중 데이터 저장 역할을 수행할 XXXBean 클래스(= DTO = VO) <br>

<hr>
<b>.jar 파일</b> <br>

![화면 캡처 2022-10-03 100847](https://user-images.githubusercontent.com/107300167/193485467-2f2a2fe6-d98a-4ee2-889a-fc00457d01ee.jpg)

<hr>
<b>페이지별 주요 기능</b> <br>

  <b>1. 메인페이지 (+ 헤더 & 푸터)</b> <br>
     - 담당자 : 팀원1 <br>
     - 구성 <br>
     <ul>
       <li> 전체적인 CSS(색상,  간격, 글꼴, 이미지, 애니메이션) </li>
       <li> 최신 리뷰, 최다 좋아요 리뷰, 추천 식당 AJAX </li>
       <li> 헤더, 푸터, 사이드바 (각 페이지로 경로 설정) </li>
       <li> 검색 기능 </li>
     </ul>
     
![메인](https://user-images.githubusercontent.com/107300167/192664111-77ed11f3-415f-47d6-957f-8edd272d4169.jpg) <br>
![푸터](https://user-images.githubusercontent.com/107300167/192664141-b2ec6283-f700-4a89-9a0f-bd9faba32b99.jpg) <br>
     
     
<hr>
   <b>2. 회원가입/ 로그인</b> <br>
       - 담당자 :  팀원2 <br>
       - 구성 <br> 
      <ul>
        <li> 카카오, 네이버, 구글 간편 로그인 API </li>
        <li> 비밀번호 암호화, 인증메일 발송 </li>
        <li> (회원가입) 이메일, 비밀번호 중복확인 </li>
        <li> (관리자 페이지) 회원관리 (글 삭제, 회원 삭제) </li>
        <li> 회원 정보 수정 </li>
        <li> 아이디, 비밀번호 찾기 </li>
      </ul> 
  
![login](https://user-images.githubusercontent.com/107300167/192667871-e6af975b-0fa7-4fcc-a997-6623b41897f2.jpg)

![email](https://user-images.githubusercontent.com/107300167/192667694-4c6448e8-3b9b-4c48-9687-08b670eae7da.jpg)

![join](https://user-images.githubusercontent.com/107300167/192667714-e6c27eae-364e-48ce-8753-b26c962470e9.jpg)

![change_passwd](https://user-images.githubusercontent.com/107300167/192667736-8cdb32dc-dc27-4858-ab5f-4e34a51aafac.jpg) <br>


<hr>
  <b>3. 리뷰</b> <br>
     - 담당자 : 팀원3, 4 <br>
     - 구성 <br>
     <ul>
       <li>식당 정보 및 리뷰 글</li>
       <li>다음 주소 API, 카카오 지도 API</li>
       <li>리뷰글과 식당 정보 연동 (평균 별점, AJAX로 식당 불러오기</li>
       <li>식당 카테고리, 리뷰 태그</li>
       <li>리뷰 좋아요, 댓글</li>
       <li>식당, 리뷰 정보 지도에 출력</li>
      </ul>
      
![어맛리뷰](https://user-images.githubusercontent.com/107300167/192669781-81f57625-d407-42d0-8e36-97143282d647.jpg)

![식당리스트](https://user-images.githubusercontent.com/107300167/192669804-b1efadc7-2bc4-4c51-937d-5251db428be3.jpg)

![3](https://user-images.githubusercontent.com/107300167/192669820-7fb6a265-0a65-477f-8732-e82145e0abc9.jpg)


<hr>
  <b>4. 커뮤니티 & 이벤트 </b> <br>
     - 담당자 : 팀원5 - 커뮤니티 tmi게시판, 룰렛 / 우수빈 - 커뮤니티 mate, recipe 게시판 <br>
     - 구성 <br>
     <ul>
       <li>mate, tmi, recipe 용도에 따른 게시판 (글 쓰기, 수정, 삭제, 검색, 댓글, 대댓글)</li>
       <li>recipe 페이지 첨부파일 최대 5개 + 이미지 슬라이딩</li>
       <li>배너, 프로필 아이콘 출력</li>
       <li>룰렛</li>
      </ul>
      
![community1](https://user-images.githubusercontent.com/107300167/192671456-4e6c7efb-e227-4081-8130-d1a50d27c96e.jpg)

![community2](https://user-images.githubusercontent.com/107300167/192671480-f429f95f-0586-4f83-9795-a8b745daff5d.jpg)

![community3](https://user-images.githubusercontent.com/107300167/192671495-1c4a6fc2-d820-48ba-b4be-09bc8edb7980.jpg)

![룰렛](https://user-images.githubusercontent.com/107300167/192671508-61b4dba5-da4b-4b49-be7a-c253ee0ce5d3.jpg)


<hr>
  <b>5. 고객센터</b> <br>
     - 담당자 : 팀원7 <br>
     - 구성 <br>
     <ul>
       <li>FAQ와 공지사항</li>
       <li>카테고리별 탭 나눔</li>
       <li>전체 검색 및 내용, 제목 선택 검색 기능</li>
       <li>관리자 댓글</li>
     </ul>
     
![faq1](https://user-images.githubusercontent.com/107300167/192673409-84653a7a-3022-4af5-a6f3-c7f39667c07b.jpg)

![faq2](https://user-images.githubusercontent.com/107300167/192673426-f1df1cd5-7a39-4ebc-9cb7-6bb629580067.jpg)

![faq3](https://user-images.githubusercontent.com/107300167/192673445-b4e8019f-2f1e-4e6d-a5ef-d17af0d2cd20.jpg)


<hr>
<b>프로젝트를 끝내며</b> <br>
프로젝트 하기 전까지 강사님 주석 보고 만드는 거에 익숙해져서 파라미터로 무엇을 들고오고 값을 어디로 보내고 저장하는지 등 감이 없었습니다. <br>
프로젝트를 통해 서블릿과 mvc패턴을 이해하고자 커뮤니티 페이지를 맡기로 했습니다. <br>
팀원들의 도움과 인터넷의 힘을 빌려 로직을 완성 시키며, mvc패턴의 흐름을 이해할 수 있게 되었습니다. <br>
그리고 아이디어 구상, 디비설계, 시퀀스 다이어그램, 와이어프레임등 프로젝트를 통해 처음 접해보는 것들도 해볼 기회가 생겨서 값진 경험이었습니다. <br>
2달동안 도와주신 멋진 3조 팀원들! 수고 많으셨고 감사합니다. <br>


      
      
      
      
