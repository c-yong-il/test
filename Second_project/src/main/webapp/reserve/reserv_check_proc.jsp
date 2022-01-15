<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="projectVO.reservVO,projectDao.reservDao" %>

<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="vo" class="projectVO.reservVO"></jsp:useBean>
<jsp:setProperty property="*" name="vo"/>

<%
	String iid = request.getParameter("iid");
	reservDao dao = new reservDao();
	int result = dao.delete();
	
	
	if(result ==1){
		response.sendRedirect("reserv.jsp");
	}
%>