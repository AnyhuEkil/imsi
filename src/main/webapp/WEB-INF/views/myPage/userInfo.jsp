<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="UTF-8" />
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>userInfo</title>
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#uptBtn").click(function(){
			var userName = $("#userName").val();
			var password = $("#password").val();
			if(userName == ""){
				alert("닉네임을 입력하세요");
				$("#userName").focus();
				return;
			}
			if(password == ""){
				alert("비밀번호를 입력하세요.");
				$("#password").focus();
				return;
			}
			$("form").attr("action", "${path }/myPage/update.do");
			$("form").submit();
		});
		$("#delBtn").click(function(){
			$("form").attr("action", "${path}/myPage/delete.do");
			$("form").submit();
		});
	});
</script>
<style type="text/css"></style>
</head>
<body>
	<div>
		<h3>myPage(왼쪽자리 확보 후 이 메세지 삭제)</h3>
		<jsp:include page="../myPage/myPage.jsp" flush="false" />
	</div>
	<br>
	<form>
	<input type="hidden" name="userId" value="${mem.userId }"/>
	<div>
		<div>이메일(변경불가) : ${mem.email }</div>
		<div>닉네임 : <input type="text" name="userName" id="userName" value="${mem.userName }"></div>
		<div>변경할 비밀번호<input type="password" name="password" id="password" value=""></div>
		<div>포인트 : ${mem.userPoint }</div>
		<!-- TODO 비밀번호 검사 -->
		<!-- <div>현재 비밀번호(필수)<input type="password" name="password" id="password" value=""></div> -->
		<button type="button" id="uptBtn">수정</button>
		<button type="button" id="delBtn">회원탈퇴</button>
	</div>
	</form>
</body>
</html>