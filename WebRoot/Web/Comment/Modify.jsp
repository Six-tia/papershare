<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.myProject.WenXian.entity.*"%>
<%@ page
	import="com.myProject.WenXian.dao.*,com.myProject.WenXian.util.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Comment编辑页面</title>
<script src="../js/myjs.js" type="text/javascript"></script>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<link href="../css/select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery.js"></script>
<script src="../js/select-ui.min.js" type="text/javascript"></script>
<link rel="stylesheet"
	href="../../kindeditor/themes/default/default.css" />
<link rel="stylesheet"
	href=".../../kindeditor/plugins/code/prettify.css" />
<script charset="utf-8" src="../../kindeditor/kindeditor.js">
	
</script>
<script charset="utf-8" src="../../kindeditor/lang/zh_CN.js">
	
</script>
<script charset="utf-8" src=".../../kindeditor/plugins/code/prettify.js">
	
</script>

<script type="text/javascript">
	$(document).ready(function(e) {
		$(".select1").uedSelect({
			width : 345
		});
		$(".select2").uedSelect({
			width : 167
		});
		$(".select3").uedSelect({
			width : 100
		});
	});
</script>
<script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
</script>
</head>
<body>
	<form name="form1" action="../../Comment.do" method="post">
		<input type="hidden" name="action" value="update" /> <input
			type="hidden" name="id" value="<%=request.getParameter("id")%>" />
		<%
			Comment model = new CommentDao().GetModel(Integer.parseInt(request
					.getParameter("id")));
		%>
		<div class="place">
			<span>当前位置：</span>
			<ul class="placeul">
				<li><a href="#">评论详情</a>
				</li>
			</ul>
		</div>
		<!--中间部分开始-->
		<div class="formbody">
			<div class="formtitle">
				<span>评论详情</span>
			</div>
			<!--主体表单开始-->
			<!--大文本框样式为textinput,下拉框样式为select1,下拉框需用<div class="vocation"></div>包含-->
			<ul class="forminfo">
				<li><label> 用户:</label> <%=new UserInfoDao().GetModel(model.getUserId()).getUName()%></li>
				<li><label> 论文:</label> <%=new PaperDao().GetModel(model.getPaperId()).getTitle()%>
				</li>
				<li><label> 评论内容:</label> <%=model.getContents()%></li>
				<li><label> 句段位置:</label> "<%=model.getPosition()%>
				</li>
				<li><label> 评论时间:</label> <%=model.getPTime()%></li>
				<li><label> 点赞数:</label> <%=model.getZan()%></li>
				
				
			</ul>
			<!--主体表单结束-->
		</div>
		<!--中间结束-->
	</form>
</body>
</html>



