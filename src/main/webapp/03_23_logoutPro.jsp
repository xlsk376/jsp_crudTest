<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 특정 세션 한 개를 지정해서 삭제하기
	session.removeAttribute("log");

	response.sendRedirect("02_main.jsp");
%>