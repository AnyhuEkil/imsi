<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="UTF-8" />
<c:set var="path" value="${pageContext.request.contextPath}" />
<%
	request.setCharacterEncoding("UTF-8");
	String path = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Info</title>
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
	});
</script>
<style type="text/css">
</style>
</head>
<body>
	<c:import url="../main/header.jsp" />
	<br>
	<br>
	개인정보,입찰정보,배송지정보,카드정보,쪽지함
	<div>
		<h1>회원개인정보(작업후삭제)</h1>
	</div>
	<div>
		<h1>입찰정보(작업후삭제)</h1>
	</div>
	<div>
		<h1>낙찰배송정보(작업후삭제)</h1>
	</div>
	<div>
		<h1>배송지정보(작업후삭제)</h1>
	</div>
	<div>
		<h1>쪽지함(작업후삭제)</h1>
	</div>
	<div>
		<h1>카드정보(작업후삭제)</h1>
	</div>
	

	<%-- <form>
		<input type="hidden" name="email" value="${mem.email }" />
		<div class="container-fluid well span1, container">
			<div class="row-fluid">
				<div class="span2">
					<img
						src="https://secure.gravatar.com/avatar/de9b11d0f9c0569ba917393ed5e5b3ab?s=140&r=g&d=mm"
						class="img-circle">
				</div>
				<div class="span8">
					<h3>E-mail: ${mem.email }</h3>
					<h3>Register Date: ${mem.registerDate }</h3>
					<h6>
						Password: <input type="text" class="form-control" name="password"
							id="password" type="password" size="10">
					</h6>
					<h6>
						Name: <input type="text" class="form-control" name="userName"
							id="userName" value="${mem.userName }" size="10">
					</h6>
					<button type="button" class="form-control btn btn-primary"
						id="uptBtn">수정</button>
					<button type="button" class="form-control btn btn-primary"
						id="delBtn">삭제</button>
				</div>
			</div>
		</div>
	</form> --%>
</body>
</html>