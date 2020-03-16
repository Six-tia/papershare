<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.myProject.WenXian.entity.*"%>
<%@ page
	import="com.myProject.WenXian.dao.*,com.myProject.WenXian.util.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>首页</title>
		<link href="css/style.css" rel="stylesheet" type="text/css">

			<script type="text/javascript" src="js/jquery1.42.min.js">
</script>

			<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js">
</script>
	</head>
	<body>
		<form id="form1" runat="server">
			<jsp:include page="Top.jsp" />

			<div class="main">

				<!--js图片 开始-->
				<div id="slideBox" class="slideBox">
					<div class="hd">
						<ul>

							<li>
								1
							</li>
							<li>
								2
							</li>
							<li>
								3
							</li>
						</ul>
					</div>
					<div class="bd">
						<ul>
							<li>
								<a href='http://www.baidu.com' target="_blank" title='轮播图1'>
									<img src='images/2015032217430720.jpg' /> </a>
							</li>
							<li>
								<a href='http://www.baidu.com' target="_blank" title='轮播图2'>
									<img src='images/2015032217432889.jpg' /> </a>
							</li>
							<li>
								<a href='http://www.baidu.com' target="_blank" title='轮播图3'>
									<img src='images/2015032217434232.jpg' /> </a>
							</li>
						</ul>
					</div>
				</div>

				<script type="text/javascript">
jQuery(".slideBox").slide( {
	mainCell : ".bd ul",
	autoPlay : true
});
</script>

				<div class="main_left">
					<div class="new" style="margin-top: 17px;">
						<div class="new_title">
							<div class="notice_t_left">
								最新论文
							</div>
							<a class="notice_t_right" href="Aritlce.jsp">更多>></a>
							<div class="clear">
							</div>
						</div>
						<ul class="new_content">
							<%
								List<Paper> list = new PaperDao().GetListByPage(10, 1, "");
								if (list != null && list.size() > 0) {
									for (Paper a : list) {
							%>
							<li>
								<span>[<%=a.getAddTime()%>]</span><a
									href='ArticleDetail.jsp?id=<%=a.getId()%>'> <%=a.getTitle()%>
								</a>
							</li>
							<%
								}
								}
							%>
						</ul>
					</div>
					<!--参考资料 over-->
				</div>
				<div class="main_right">

					<!-- 开始-->
					<div class="honor" style="margin-top: 17px;">
						<div class="honor_title">
							经典论文
						</div>
						<ul class="honor_content">
							<%
								List<Paper> yl = new PaperDao().GetListByPage(10, 1, "");
								if (yl != null && yl.size() > 0) {
									for (Paper a : yl) {
							%>
							<li>
								<a href='ArticleDetail.jsp?id=<%=a.getId()%>'> <%=a.getTitle()%> </a>
							</li>
							<%
								}
								}
							%>

						</ul>
					</div>
					<!-- over-->
				</div>
				<div class="mian_main">
					<!-- 开始-->
					<div class="new" style="margin-top: 17px;">
						<div class="new_title">
							<div class="notice_t_left">
								最新留言
							</div>
							<a class="notice_t_right" href="KeBiao.jsp">更多>></a>
							<div class="clear">
							</div>
						</div>
						<ul class="new_content">

							<%
								List<Comment> dl = new CommentDao().GetListByPage(10, 1, "");
								if (dl != null && dl.size() > 0) {
									for (Comment a : dl) {
							%>
							<li>
								<span>[<%=a.getAddTime()%>]</span> <%=a.getRemark()%>
							</li>
							<%
								}
								}
							%>

						</ul>
					</div>
					<!-- over-->
				</div>
				<div class="clear">
				</div>
			</div>
			<!-- 开始-->
			
			<!-- over-->
			<!--bottom 开始-->
			<jsp:include page="Foot.jsp" />
			<!--bottom over-->
		</form>
	</body>
</html>
