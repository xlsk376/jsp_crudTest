<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h1>메인 페이지</h1>
		
		<table border="1">
			<tr>
				<td align="right">
		<% String log = (String)session.getAttribute("log"); %>
		<%	if(log == null) {	%>
					<a href="03_11_joinForm.jsp">회원가입</a>
					<a href="03_21_loginForm.jsp">로그인</a>
		<%	} else {	%>
					<a href="03_23_logoutPro.jsp">로그아웃</a>
					<a href="03_31_updateForm.jsp">회원정보수정</a>
					<a href="03_41_deleteForm.jsp">회원탈퇴</a>
		<%	}	%>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>