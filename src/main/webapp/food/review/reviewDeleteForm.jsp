<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="food/review/reviewDeleteForm.css" rel="stylesheet">
</head>
<body>
<div class="mainLogo">
    		<a href="/uhmat_project/"><img src="image/uhmatMainLogo.png"></a>
    	</div>
		<!-- 로고 들어가는 곳 끝 -->
		
		<!-- 로그인 및 회원가입 부분 시작 -->
		<div class="loginPart">
		<c:choose>
			<c:when test="${empty sessionScope.sNickName}">
				<a href="MemberLogin.me">로그인</a>&nbsp; <a href="MemberJoinForm.me">회원가입</a>
			</c:when>
			<c:otherwise>
				<a href="MemberDetailForm.me?nickName=${sessionScope.sNickName }">${sessionScope.sNickName }
					님 </a>&nbsp; <a href="MemberLogout.me">로그아웃</a>
				<c:if test="${sessionScope.sNickName eq 'admin'}"> &nbsp; <a
						href="AdminMain.me">관리자페이지</a>
				</c:if>
			</c:otherwise>
		</c:choose>
		</div>
	<hr>
	<section>
		<form action="ReviewDeleteProAction.re" method="post">
				<input type="hidden" name="idx" value="${param.idx }">
				<input type="hidden" name="fileName" value="${param.fileName }">
				<input type="hidden" name="pageNum" value="${param.pageNum }">
				<div class="dv"><span class="lv">비밀번호를 입력하세요</span>
					<input type="password" name="pass" required="required">
				</div>
					<input type="submit" class="btn" value="삭제">
					<input type="button"  class="btn" value="뒤로 돌아가기">
		</form>
	</section>
</body>
</html>