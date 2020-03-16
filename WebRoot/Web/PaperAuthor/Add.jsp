<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.myProject.WenXian.entity.*"%>
<%@ page
	import="com.myProject.WenXian.dao.*,com.myProject.WenXian.util.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>PaperAuthor添加</title>
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
	<form name="form1" action="../../PaperAuthor.do" method="post">
		<input type="hidden" name="action" value="add" />
		<div class="place">
			<span>当前位置：</span>
			<ul class="placeul">
				<li><a href="#">论文作者添加</a>
				
				<%int id = Integer.parseInt(request.getParameter("id")); %>
				</li>
			</ul>
		</div>
		<!--中间部分开始-->
		<div class="formbody">
			<div class="formtitle">
				<span>论文作者添加</span>
			</div>
			<!--主体表单开始-->
			<!--大文本框样式为textinput,下拉框样式为select1,下拉框需用<div class="vocation"></div>包含-->
			<ul class="forminfo">
				<li><label> 作者:</label><div class="vocation"><select name="AuthorId"
					class="select1">
						<%
							List<Author> list = new AuthorDao().GetList("");
							if (list != null) {
							for (Author c : list) {
						%>
						<option value="<%=c.getId()%>">
							<%=c.getName()%>
						</option>
						<%
							}
																									}
						%>
				</select> 
				</div> </li>
				<li><label> 论文:</label> <%=new PaperDao().GetModel(id).getTitle()%><input type="hidden" id="PaperId"
					name="PaperId" value="<%=id %>" class="dfinput" /></li>
				<li><label> 是否是通讯作者:</label><div class="vocation"><select name="IsTongXun"
					class="select1">
						
						<option value="是">
							是
						</option>
						<option value="否">
							否
						</option>
				</select> 
				</div>  </li>
				<li><label> 排序:</label> <input type="text" id="SortId"
					name="SortId" value="0" class="dfinput" /></li>
				<script src="../js/My97DatePicker/WdatePicker.js"
					type="text/javascript"></script>
				<script type="text/javascript">
					function checkForm() {
						
						var intSortId = document.getElementById("SortId");
						if (!checkNum(intSortId.value)) {
							alert("排序必须是数字!");
							return false;
						}
						document.forms[0].submit();
					}
				</script>
				<li><label> &nbsp;</label> <input name="btnSubmit"
					type="button" class="btn" value="提交" onclick="checkForm();" /></li>
			</ul>
			<!--主体表单结束-->
		</div>
		<!--中间结束-->
	</form>
</body>
</html>

