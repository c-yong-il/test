<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import="com.cgv.vo.MemberVO, com.cgv.dao.MemberDao"%>
    
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="vo" class="com.cgv.vo.MemberVO"></jsp:useBean>
<jsp:setProperty property="*" name="vo"/>

<%
	MemberDao dao = new MemberDao();
	int result = dao.insert(vo);
	
	if(result == 1) {
		//System.out.println("회원가입성공");
		response.sendRedirect("../login/login.jsp?join_result=succ");
	}else {
		System.out.println("회원가입실패");		
	}
%>

