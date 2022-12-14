<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href="css/header.css" rel="stylesheet">


<!-- 제이쿼리 -->
	<script src="js/jquery-3.6.0.js"></script>
	
	
<!-- 스크립트 -->
	<script type="text/javascript">
	$(function(){
		
		//스크롤 이벤트
	    var lastScrollTop = 0; 
	    var delta = 15;
	    
	    $(window).scroll(function(event){
	    	
	       var st = $(this).scrollTop();
	       
	       if(Math.abs(lastScrollTop - st) <= delta)
	          return; // 스크롤값을 받아서 리턴한다.
	       
	          
	      	// 내릴때
			if ((st > lastScrollTop) && (lastScrollTop>0)) {
		       
		  		$("#header1").css({
		  			"position" : "fixed ",
		  			"transition-duration" : "0.5s"
		  		});
		  		
		  		$("#backGraound").css({
		  			"z-index" : "2",
		  			"position" : "fixed ",
		  			"transition-duration" : "0.5s",
		  			"opacity": "1"
		  		});
		       
		  		
	              /* 로고 글자 */
	              $("#logo > a").css({
// 	                  "color" : "#4288eb ",
	                 "color" : "#81c543 ",
	                 "transition-duration" : "0.5s"
	              });
		  		
		  		
		  		/* 로그인 글자 */
		  		$(".login > a").css({
		  			"color" : "black ",
		  			"transition-duration" : "0.5s"
		  		});
		  		
		  		
		  		/* 장바구니 글자, 마이페이지 */
		  		$("#cart > a, .myPage > li a ").css({
		  			"color" : "black ",
		  			"transition-duration" : "0.5s"
		  		});
		  		
		  		
		  		/* 메뉴바 글자 */
		  		$(".menu > li > a").css({
		  			"color" : "black ",
		  			"transition-duration" : "0.5s"
		  		});
		  		
		  		
		   // 올릴때
		   } else {
		  		$("#header1").css({
		  			"background-color":"",
		  			"position" : "fixed",
		  			"transition-duration" : "0.5s"
		  		});
		  		
		  		$("#backGraound").css({
		  			"z-index" : "",
		  			"transition-duration" : "0.5s",
		  			"opacity": "0"
		  		});
		       
		  		/* 로고 글자 */
		  		$("#logo > a").css({
		  			"color" : "",
		  			"transition-duration" : "0.5s"
		  		});
		  		
		  		
		  		/* 로그인 글자 */
		  		$(".login > a").css({
		  			"color" : "",
		  			"transition-duration" : "0.5s"
		  		});
		  		
		  		
		  		/* 장바구니 글자, 마이페이지 */
		  		$("#cart > a, .myPage > li a ").css({
		  			"color" : "",
		  			"transition-duration" : "0.5s"
		  		});
		  		
		  		
		  		/* 메뉴바 글자 */
		  		$(".menu > li > a").css({
		  			"color" : "",
		  			"transition-duration" : "0.5s"
		  		});
		  		

		   }
		       lastScrollTop = st;
	    });
	    
	    
	});
	
	function login() {
		window.open("MemberLoginForm.me", "login", "width=400, height=600");
	}
	
	</script>




<!-- 헤더 -->
<header style="position: relative; width:100%;">
	
	
		 	
	<!-- 백그라운드 -->
	<div id="backGraound" style=" width:100%; height:180px; background-color: white; position: absolute; z-index: 0; opacity: 0;"></div>


	<!-- 헤더 기능 메뉴 -->
	<div id="header1" style=" width:100%; position: absolute; z-index: 3; ">
	
		
			<!-- 	<!-- 촤락  -->
		<!-- 	<div id="font_img_holder"> -->
		<!-- 		<img src="https://cdn.imweb.me/upload/S201808095b6c2aff66469/4c07bab104c64.gif" width="147" alt="" style="max-width: 100%; height: auto;"> -->
		<!-- 	</div> -->
	
	
		<!-- 로고 -->
	
			
		<img id="main_logo" src="img/main/main_logo.png" alt="로고">
		
		
		<div id="logo">
			<a href="./">트리어스</a>
		</div>
		
		
		
		<!-- 로그인/마이페이지/장바구니 영역 -->
		<div id=login>

		
			<section>
				<c:choose>
					<c:when test="${empty sessionScope.sId}">
						<div class="login">
							
							<a onclick="login()">로그인</a>
						</div>
					</c:when>
					
					
					<c:otherwise>
						<c:choose>
							<c:when test="${sessionScope.sId eq 'admin'}">
								<div class="login">
									<a href="Admin.my">${sessionScope.sId }님</a>
									<a href="MemberLogout.me">로그아웃</a>
								</div>
							</c:when>
							
							
							<c:otherwise>



								<!-- 장바구니 영역 -->
								<div id="cart">
									<a href="Cart.my">장바구니 </a> 
								</div>
								
								
								
								<!-- 마이페이지 영역 -->
								<div id="myPage">
									<ul class="myPage">
			
			
										<li><a>${sessionScope.sId }님</a>
											<ul class="subMyPage">
												<li><a href="UpdateMemberInfoForm.my">회원정보수정</a></li>
												<li><a href="Wishlist.my">위시리스트</a></li>
												<li><a href="SupportHistory.my">후원 내역 조회</a></li>
												<li> <a href="CampaignApplyList.cp">신청 캠페인 조회</a></li>
												<li><a href="OrderList.my">주문내역 조회</a></li>
												<li><a href="MemberLogout.me">로그아웃</a></li>
											</ul>
										</li>
										
										
									</ul>
								</div>
								

								
							</c:otherwise>
							
							
						</c:choose>
					</c:otherwise>
				</c:choose>
			</section>
		
		
		<!-- 로그인/마이페이지/장바구니 영역 끝 -->
		</div>
		
		
		<hr style="	width: 100%; opacity: 1; margin: 0 ;">
		
		
	 	<!-- 메뉴바 영역 -->
		<div id="menu">
			<ul class="menu">
			
			
				<li><a href="CampaignList.cp">캠페인</a>
					<ul class="subMenu">
						<li><a href="CampaignList.cp">진행중인 캠페인</a></li>
					</ul>
				</li>
				
				
				<li><a href="SupportList.su">후원하기</a>
					<ul class="subMenu">
						<li><a href="SupportList.su">진행중인 후원</a></li>
					</ul>
				</li>
				
				
				<li><a href="StoreItemList.st?sto_category=반려나무">스토어</a>
					<ul class="subMenu">
						<li><a href="StoreItemList.st?sto_category=반려나무">반려나무</a></li>
						<li><a href="StoreItemList.st?sto_category=식물">반려식물</a></li>
						<li><a href="StoreItemList.st?sto_category=부자재">부자재</a></li>
					</ul>
				</li>
				
				
				<li><a href="DiaryList.cm">커뮤니티</a>
					<ul class="subMenu">
						<li><a href="NoticeList.cm">공지사항</a></li>
						<li><a href="CampaignReviewList.cm">캠페인 참여후기</a></li>
						<li><a href="DiaryList.cm">반려나무 성장일기</a></li>
						<li><a href="FreeBoardList.cm">자유게시판</a></li>
						<li><a href="QnaList.cm">Q & A</a></li>
					</ul>
				</li>
				
				
			</ul>
		<!-- 메뉴바 영역 끝-->
		</div>

		
		
	<!-- 헤더 기능 메뉴 끝-->
	</div>
</header>
