<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*,com.myProject.WenXian.entity.*"%>
<%@ page
	import="com.myProject.WenXian.dao.*,com.myProject.WenXian.util.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>安全退出</title>
	</head>
	<body>
		<br>
			<%
				session.removeAttribute("user");
				session.removeAttribute("admin");
				session.removeAttribute("role");
				session.removeAttribute("name");
				out
						.print("<script>window.parent.location.href='../index.jsp';</script>");
				//request.getSession().invalidate();
				//request.getRequestDispatcher("index.jsp").forward(request, response);
			%>
		
	</body>
</html>