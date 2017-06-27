<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="UTF-8" />

<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>♪list</title>
<link rel="stylesheet" href="resources/css/test.css">
<script src="http://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
	});
</script>
</head>
<body>
	<br>
	<div class="yMain">
		<div class="yTitle">관리자용리스트</div>

		<form method="post">
			<table border="1">
				<tr>
					<td>userId<input type="text" name="userId"
						value="${testCtrlModelAttribute.userId }" /></td>
					<td>email<input type="text" name="email"
						value="${testCtrlModelAttribute.email }" /></td>
					<td><input type="submit" value="???" /></td>
				</tr>
			</table>
		</form>
		<table border="1">
			<tr>
				<th>userId</th>
				<th>userName</th>
				<th>email</th>
				<th>registerDate</th>
				<th>auth</th>
				<th>userPoint</th>
				<th>realName</th>
				<th>address</th>
				<th>zipCode</th>
				<th>phoneNumber</th>
				<th>picture</th>
			</tr>
			<c:forEach var="acListJspOnly" items="${list }">
				<tr>
					<td>${acListJspOnly.userId}</td>
					<td>${acListJspOnly.userName}</td>
					<td>${acListJspOnly.email}</td>
					<td>${acListJspOnly.registerDate}</td>
					<td>${acListJspOnly.auth}</td>
					<td>${acListJspOnly.userPoint}</td>
					<td>${acListJspOnly.realName}</td>
					<td>${acListJspOnly.address}</td>
					<td>${acListJspOnly.zipCode}</td>
					<td>${acListJspOnly.phoneNumber}</td>
					<td>${acListJspOnly.picture}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>