<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.myProject.WenXian.entity.*"%>
<%@ page
	import="com.myProject.WenXian.dao.*,com.myProject.WenXian.util.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>左侧菜单</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />

<script language="JavaScript" src="js/jquery.js">
	
</script>

<script type="text/javascript">
	$(function() {
		//导航切换
		$(".menuson li").click(function() {
			$(".menuson li.active").removeClass("active")
			$(this).addClass("active");
		});

		$('.title').click(function() {
			var $ul = $(this).next('ul');
			$('dd').find('ul').slideUp();
			if ($ul.is(':visible')) {
				$(this).next('ul').slideUp();
			} else {
				$(this).next('ul').slideDown();
			}
		});
	})
</script>

</head>
<body style="background: #f0f9fd;">
	<div class="lefttop">
		<span></span>系统管理
		<%
			String role = session.getAttribute("role").toString();
			int id = Integer
					.parseInt(session.getAttribute("userId").toString());
		%>
	</div>
	<dl class="leftmenu">
		<%
			if (role.equals("admin")) {
		%>
		<dd>
			<div class="title">
				<span><img src="images/leftico01.png" /> </span>用户管理
			</div>
			<ul class="menuson">
				<li><cite></cite><a href="UserInfo/Add.jsp" target="rightFrame">用户编辑</a><i></i>
				</li>
				<li><cite></cite><a href="UserInfo/List.jsp"
					target="rightFrame">用户列表</a><i></i></li>
			</ul>
		</dd>
		<%
			} else {
		%>
		<dd>
			<div class="title">
				<span><img src="images/leftico01.png" /> </span>个人资料
			</div>
			<ul class="menuson">
				<li><cite></cite><a href="UserInfo/Person.jsp?id=<%=id %>" target="rightFrame">个人资料</a><i></i>
				</li>
				
			</ul>
		</dd>
		<%} %>
		<dd>
			<div class="title">
				<span><img src="images/leftico01.png" />
				</span>作者管理
			</div>
			<ul class="menuson">
				<li><cite></cite><a href="Author/Add.jsp" target="rightFrame">作者编辑</a><i></i>
				</li>
				<li><cite></cite><a href="Author/List.jsp" target="rightFrame">作者列表</a><i></i>
				</li>
			</ul>
		</dd>

		<dd>
			<div class="title">
				<span><img src="images/leftico01.png" />
				</span>评论管理
			</div>
			<ul class="menuson">
				
				<li><cite></cite><a href="Comment/List.jsp" target="rightFrame">评论列表</a><i></i>
				</li>
			</ul>
		</dd>

		<dd>
			<div class="title">
				<span><img src="images/leftico01.png" />
				</span>论文管理
			</div>
			<ul class="menuson">
				<li><cite></cite><a href="Paper/Add.jsp" target="rightFrame">论文编辑</a><i></i>
				</li>
				<li><cite></cite><a href="Paper/List.jsp" target="rightFrame">论文列表</a><i></i>
				</li>
			</ul>
		</dd>



	</dl>
</body>
</html>
