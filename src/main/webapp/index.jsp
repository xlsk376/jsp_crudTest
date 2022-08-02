<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 3명의 회원 샘플데이터 저장
	String[] sampleId = {"qwer", "abcd", "hello"};
	String[] samplePw = {"1111", "2222", "3333"};
	String[] sampleName = {"이만수", "박영희", "이수민"};
	String[] sampleGender = {"남성", "여성", "여성"};
	
	// 저장할 수 있는 최대 회원 수
	int size = 100;
	String[] idList = new String[size];
	String[] pwList = new String[size];
	String[] nameList = new String[size];
	String[] genderList = new String[size];
	
	// 저장된 회원 수
	int count = sampleId.length;
	for(int i=0; i<count; i++) {
		idList[i] = sampleId[i];
		pwList[i] = samplePw[i];
		nameList[i] = sampleName[i];
		genderList[i] = sampleGender[i];
	}
	
	// 전체 회원정보 출력
	for(int i=0; i<count; i++) {
		System.out.println(idList[i] + ", " + pwList[i] + ", " + nameList[i] + ", " + genderList[i]);
	}
	
	// 로그인 상태를 확인할 수 있는 log변수 세션에 저장
	session.setAttribute("log", null);
	// 전체 회원 수 세션에 저장
	session.setAttribute("count", count);
	
	// 세션에 회원 정보 저장
	session.setAttribute("idList", idList);
	session.setAttribute("pwList", pwList);
	session.setAttribute("nameList", nameList);
	session.setAttribute("genderList", genderList);
	
	// 각종 정보 저장 후, main페이지로 이동하기
	response.sendRedirect("02_main.jsp");
%>