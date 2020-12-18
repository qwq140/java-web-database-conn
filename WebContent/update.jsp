<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.cos.test1.config.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정하기</title>
</head>
<body>
<%
	String sql = "UPDATE users SET username = ?, password = ?, email =? WHERE id = ? ";
	Connection conn = DBConn.getConnection();
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString (1, "pog");
	pstmt.setString (2, "5759");
	pstmt.setString (3, "pog@nate.com");
	pstmt.setString (4, "3");
	
	pstmt.executeUpdate();
%>
<h3>데이터가 수정되었습니다.</h3>
</body>
</html>