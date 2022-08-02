<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	int count = (int)session.getAttribute("count");
	String log = (String)session.getAttribute("log");
	
	String[] idList = (String[])session.getAttribute("idList");
	String[] pwList = (String[])session.getAttribute("pwList");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	// 관리자가 로그인 한 경우
	if(id.equals("admin") && pw.equals("admin")){
		response.sendRedirect("01_11_adminMain.jsp");
	}else{
		// 일반 사용자가 로그인 한 경우
		boolean check = false;
		for(int i=0; i<count; i++) {
			if(idList[i].equals(id) && pwList[i].equals(pw)){
				check = true;
				break;
			}
		}
		
		if(check) {
			session.setAttribute("log", id);
			// setMaxInactiveInterval() 메서드는 초 단위
			// 60초(1분) * 100 = 100분
			// 세션의 유효시간을 100분으로 설정하여,
			// 100분 이후에는 자동으로 세션이 삭제된다.
			session.setMaxInactiveInterval(100 * 60);
			
			response.sendRedirect("02_main.jsp");
		}else{
			response.sendRedirect("03_21_loginForm.jsp");
		}
	}
	
%>