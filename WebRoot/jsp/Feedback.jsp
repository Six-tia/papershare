<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.myProject.WenXian.entity.*"%>
<%@ page
	import="com.myProject.WenXian.dao.*,com.myProject.WenXian.util.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head id="Head1">
		<title>在线留言</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />

		<script type="text/javascript" src="js/jquery1.42.min.js">
</script>

		<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js">
</script>
		<script src="../kindeditor/kindeditor-min.js" type="text/javascript">
</script>

		<script>
var editor;
KindEditor.ready(function(K) {
	editor = K.create('#Contents', {
		resizeType : 1,
		allowPreviewEmoticons : false,
		allowImageUpload : false,
		items : [ 'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor',
				'bold', 'italic', 'underline', 'removeformat', '|',
				'justifyleft', 'justifycenter', 'justifyright',
				'insertorderedlist', 'insertunorderedlist', '|', 'emoticons',
				'image', 'link' ]
	});
});
</script>
	</head>
	<body>
		<form id="form1" method="post" action="../Comment.do?action=add">
			<jsp:include page="Top.jsp" />
			<div class="main">
				<div class="s_right" style="width: 1000px;">
					<div class="s_right_title" style="width: 998px;">
						<div class="s_right_title_left">
							论文评论
						</div>
						<div class="s_right_title_right">
							当前位置：
							<a href="Index.jsp">首页</a>&nbsp;>>&nbsp;
							<a href="#">论文评论</a>
						</div>
						<div class="clear">
						</div>
					</div>
					<div class="right_main" style="width: 1000px;">
						<hr />
						<p class="text">
							<span style="font-weight: bold; font-size: 16px;">留言列表</span>
						</p>
						<%
							List<Comment> list = new CommentDao().GetList(" PaperId="+request.getParameter("id"));
							if (list != null && list.size() > 0) {
								for (int i = 0; i < list.size(); i++) {
									Comment f = list.get(i);
						%>

						<p class="text">
							<span style="font-weight: bold; font-size: 14px;"> <%=i + 1%>.
								<%=f.getRemark()%> </span>
							<br />
							&nbsp; &nbsp; &nbsp; &nbsp;<%=f.getContents()%>
							<br />
							&nbsp; &nbsp; &nbsp; &nbsp;赞:<%=f.getZan()%>&nbsp;&nbsp;<a href="../Comment.do?action=zan&id=<%=f.getId()%>">点赞</a>
							<br />
							<div style="width: 100%; text-align: left;">
								&nbsp; &nbsp; &nbsp;<%=new UserInfoDao().GetModel(f.getUserId())
							.getUName()%>发布于<%=f.getAddTime()%>
							</div>
						</p>
						<%
							}
							}
						%>
						<hr />
						<p class="text">
							<span style="font-weight: bold; font-size: 16px;">发布评论</span>
						</p>
						<p class="text">
							<table style="border: solid 1px; width: 100%;">
								<tr>
									<td width="120px">
										句段
									</td>
									<td align="left">
										<input type="text" name="Position" style="width: 500px; "/>
										
										<input type="hidden" name="PaperId" value="<%=request.getParameter("id") %>" />
									</td>
								</tr>
								<tr>
									<td width="120px">
										标题
									</td>
									<td align="left">
										<input type="text" name="Remark" style="width: 500px; "/>
										
										
									</td>
								</tr>
								<tr>
									<td width="120px">
										内容
									</td>
									<td>
										<textarea id="Contents" name="Contents"
											style="width: 500px; height: 130px; "></textarea>
									</td>
								</tr>
								<tr>
									<td colspan="2" align="center">

										<%
											if (session.getAttribute("user") != null) {
												UserInfo y = (UserInfo) session.getAttribute("user");
												
										%>
										<input type="hidden" name="UserId" value="<%=y.getId()%>" />
										
										<input name="btnSubmit" type="button" class="button"
											value="提交" onclick="checkForm();"
											style="width: 160px; height: 35px;" />
										<%
											} else {
												out.print("请先登录");
											}
										%>
									</td>
								</tr>
							</table>
							<script type="text/javascript">
function checkForm() {
	editor.sync();
	document.forms[0].submit();
}</script>
						</p>
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
