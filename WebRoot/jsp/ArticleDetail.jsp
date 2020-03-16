<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.myProject.WenXian.entity.*"%>
<%@ page
	import="com.myProject.WenXian.dao.*,com.myProject.WenXian.util.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>详请查看</title>
<link href="css/style.css" rel="stylesheet" type="text/css">

	<script type="text/javascript" src="js/jquery1.42.min.js">
		
	</script>

	<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js">
		
	</script>

	<script src="../kindeditor/kindeditor-min.js" type="text/javascript">
		
	</script>
</head>
<body>
	<form id="form1">
		<jsp:include page="Top.jsp" />
		<div class="main">
			<div class="s_left">
				<div class="s_left_title">快速导航</div>
				<ul class="s_left_content">
					<li><a href='../Web/login.jsp'>后台管理</a>
					</li>

				</ul>
			</div>
			<div class="s_right">
				<div class="s_right_title">
					<div class="s_right_title_left">论文详请</div>
					<div class="s_right_title_right">
						当前位置： <a href="Index.jsp">首页</a>&nbsp;>>&nbsp; <a href="#">论文详请</a>
					</div>
					<div class="clear">
						<%
							Paper model = new PaperDao().GetModel(Integer.parseInt(request
									.getParameter("id")));
							//model.setClicks(model.getClicks() + 1);
							//new ArticleDao().Update(model);
						%>
					</div>
				</div>
				<div class="right_main">
					<div class="text_title">
						<%=model.getTitle()%></div>
					<div class="text_day">
						<a href="View.jsp?id=<%=model.getId()%>">在线预览PDF</a>
						&nbsp;&nbsp;&nbsp;&nbsp;发布者：<%=model.getCreator()%>&nbsp;&nbsp;&nbsp;&nbsp;发布时间:<%=model.getCTime()%>&nbsp;&nbsp;&nbsp;&nbsp;刊物:<%=model.getPc()%></div>
					<div class="line"></div>

					<p class="text">
						<%=model.getAbstract()%>
					</p>

					<a href="Feedback.jsp?id=<%=model.getId()%>">评论</a>
				</div>
			</div>
			<div class="clear"></div>
		</div>
		<!--bottom 开始-->
		<jsp:include page="Foot.jsp" />
		<!--bottom over-->
	</form>
</body>
</html>
