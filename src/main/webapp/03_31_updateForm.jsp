<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String[] idList = (String[])session.getAttribute("idList");
	String[] pwList = (String[])session.getAttribute("pwList");
	String[] nameList = (String[])session.getAttribute("nameList");
	String[] genderList = (String[])session.getAttribute("genderList");

	int count = (int)session.getAttribute("count");
	
	String log = (String)session.getAttribute("log");
	
	int index = 0;
	for(int i=0; i<count; i++) {
		if(idList[i].equals(log)) {
			index = i;
			break;
		}
	}
%>
	<div align="center">
		<h1>회원정보 수정</h1>
		<form method="post" action="03_32_updatePro.jsp">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><%= log %></td>
				</tr>
				<tr>
					<td>패스워드</td>
					<td><input type="password" name="pw" value="<%= pwList[index] %>"></td>				
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" value="<%= nameList[index] %>"></td>				
				</tr>
				<tr>
					<td>성별</td>
					<td>
					<%
						if(genderList[index].equals("남성")) {
					%>
						<input type="radio" name="gender" value="남성" checked="checked">남성
						<input type="radio" name="gender" value="여성">여성
					<%
						} else {
					%>
						<input type="radio" name="gender" value="남성">남성
						<input type="radio" name="gender" value="여성" checked="checked">여성
					<%
						}
					%>
					</td>	
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="입력완료">
					</td>
				</tr>
			</table>
		</form>	
		<br><br>
		<input type="button" value="메인화면" onclick="window.location.href='02_main.jsp'">	
	</div>
</body>
</html>