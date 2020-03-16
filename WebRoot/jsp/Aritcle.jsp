<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.myProject.WenXian.entity.*"%>
<%@ page
	import="com.myProject.WenXian.dao.*,com.myProject.WenXian.util.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head id="Head1" runat="server">
		<title>论文列表</title>
		<link href="css/style.css" rel="stylesheet" type="text/css">

			<script type="text/javascript" src="js/jquery1.42.min.js">
</script>

			<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js">
</script>
	</head>
	<body>
		<form id="form1">
			<jsp:include page="Top.jsp" />
			<div class="main">
				<div class="s_left">
					<div class="s_left_title">
						快速导航
					</div>
					<ul class="s_left_content">
						<li>
							<a href='../Web/login.jsp'>后台管理</a>
						</li>

					</ul>
				</div>
				<div class="s_right">
					<div class="s_right_title">
						<div class="s_right_title_left">
							论文检索
							<%
							request.setCharacterEncoding("UTF-8");

							String sw = " 1=1 ";
						%>
						</div>
						<div class="s_right_title_right">
							当前位置：
							<a href="Index.jsp">首页</a>&nbsp;>>&nbsp;
							<a href="#">论文检索</a>
						</div>
						<div class="clear">
						</div>
					</div>
					<div class="right_main">
						<table cellpadding="0" cellspacing="0" class="table">
							<%
								List<Paper> la = new PaperDao().GetList(sw);
								if (la != null && la.size() > 0) {
									for (Paper a : la) {
							%>
							<tr>
								<td class="td2_1" style="text-align: left;">
									<a href='ArticleDetail.jsp?id=<%=a.getId()%>'> <%=a.getTitle()%>
									</a>(
									<%=a.getAddTime()%>)
								</td>
							</tr>
							<%
								}
								}
							%>
						</table>
						<div>

						</div>
					</div>
				</div>
				<div class="clear">
				</div>
			</div>
			<!--bottom 开始-->
			<jsp:include page="Foot.jsp" />
			<!--bottom over-->
		</form>
	</body>
</html>
