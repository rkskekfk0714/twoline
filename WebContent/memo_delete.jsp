<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="twoline2.OnelineDTO" %>
<%@ page import="twoline2.OnelineDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String no = request.getParameter("no");
	OnelineDAO dao = new OnelineDAO();
	OnelineDTO dto = new OnelineDTO();
	dto.setMemo(no);
	
	dao.delete(dto);
	
	out.println("데이터 삭제 성공");
	response.sendRedirect("/memo/memo_list.jsp");
%>
</body>
</html>