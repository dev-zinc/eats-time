<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon"
   href="${pageContext.request.contextPath}/static/image/favicon.png" />
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/static/css/admin/adminNoticeWrite.css">
<title>문의내역 - 관리자모드</title>
</head>
<body>
   <div class="board_wrap">
      <div class="board_title">
         <h1>문의내역 - 관리자모드</h1>
      </div>
      <div class="board_view_wrap">
         <div class="board_view">
            <div class="title">제목<c:out value="${boards.inqbContent}"/></div>
            <div class="info">
               <dl>
                  <dt>회원 아이디</dt>
                  <dd><c:out value="${boards.memberIdentification}"/></dd>
               </dl>
               <dl>
                  <dt>작성일</dt>
                  <dd><c:out value="${boards.inqbDate}"/></dd>
               </dl>
             
            </div>
            <div class="cont">
               <br><c:out value="${boards.inqbContent}"/>

            </div>
         </div>
         <div class="btn">
            <a href="adminQna.jsp" class="on">목록</a> <a href="adminQnaEdit.jsp">답변
               작성</a>
         </div>
      </div>
   </div>

</body>
</html>