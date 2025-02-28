<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="${pageContext.request.contextPath}/static/image/favicon.png" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/admin/adminNoticeWrite.css">
<title>공지사항 - 관리자모드</title>
</head>
<body>
	<div class="board_wrap">
		<div class="board_title">
			<h1>공지사항 - 관리자모드</h1>
		</div>
		<form action="editOk.notificationboard" method="post">
		<input type="hidden" name="notbId" value="${notificationboard.notbId}">
		<div class="board_write_wrap">
			<div class="board_write">
				<div class="title">
					<dl>
						<dt>제목</dt>
						<dd>
							<input id="board-title" name="notbTitle" type="text" placeholder="제목 입력" value="${notificationboard.notbTitle}">
						</dd>
					</dl>
				</div>
				<div class="cont">
					<textarea id="board-content" name="notbContent" placeholder="내용 입력"><c:out value="${notificationboard.notbContent}"/></textarea>
				</div>
			</div>
			<div class="btn" style="background-color:black;">
			 <button disabled id="write-ok" type="submit" class="on" style="border:none; cursor:pointer;">수정</button>
			 </div>
			<div class="btn">
			 <a href="listOk.notificationboard">취소</a>
			</div>
		</div>
		</form>
	</div>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="${pageContext.request.contextPath}/static/js/adminNoticeWrite.js"></script>
</body>
</html>