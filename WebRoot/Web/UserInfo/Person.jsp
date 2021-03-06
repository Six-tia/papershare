﻿<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.myProject.WenXian.entity.*"%>
<%@ page
	import="com.myProject.WenXian.dao.*,com.myProject.WenXian.util.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>UserInfo编辑页面</title>
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
	<form name="form1" action="../../UserInfo.do" method="post">
		<input type="hidden" name="action" value="update" /> <input
			type="hidden" name="id" value="<%=request.getParameter("id")%>" />
		<%
			UserInfo model = new UserInfoDao().GetModel(Integer
					.parseInt(request.getParameter("id")));
		%>
		<div class="place">
			<span>当前位置：</span>
			<ul class="placeul">
				<li><a href="#">用户资料</a>
				</li>
			</ul>
		</div>
		<!--中间部分开始-->
		<div class="formbody">
			<div class="formtitle">
				<span>用户资料</span>
			</div>
			<!--主体表单开始-->
			<!--大文本框样式为textinput,下拉框样式为select1,下拉框需用<div class="vocation"></div>包含-->
			<ul class="forminfo">
				<li><label> 用户名:</label> <input type="text" id="UName"
					name="UName" value="<%=model.getUName()%>" class="dfinput" /></li>
				<li><label> 密码:</label> <input type="text" id="UPasswod"
					name="UPasswod" value="<%=model.getUPasswod()%>" class="dfinput" />
				</li>
				<li><label> 头像:</label> <input type="text" id="UImgURL"
					name="UImgURL" value="<%=model.getUImgURL()%>" class="dfinput" />
					 <input type="button"
					id="uploadFileName" value="上传" /> <script>
						KindEditor.ready(function(K) {
							var uploadbutton = K.uploadbutton({
								button : K('#uploadFileName')[0],
								fieldName : 'imgFile',
								url : '../../upload_json.jsp?dir=image',
								afterUpload : function(data) {
									if (data.error === 0) {
										var url = K.formatUrl(data.url,
												'absolute');
										K('#UImgURL').val(url);
									} else {
										alert(data.message);
									}
								},
								afterError : function(str) {
									alert('自定义错误信息: ' + str);
								}
							});
							uploadbutton.fileBox.change(function(e) {
								uploadbutton.submit();
							});
						});
					</script>
					<img src="<%=model.getUImgURL()%>"  width="100px" height="100px"/>
				</li>
				<li><label> 邮箱:</label> <input type="text" id="UEmail"
					name="UEmail" value="<%=model.getUEmail()%>" class="dfinput" /></li>
				<li><label> 电话:</label> <input type="text" id="UTel"
					name="UTel" value="<%=model.getUTel()%>" class="dfinput" />
					<input type="hidden" id="UStatus"
					name="UStatus" value="<%=model.getUStatus()%>" class="dfinput" />
					<input type="hidden" id="Role"
					name="Role" value="<%=model.getRole()%>" class="dfinput" />
					</li>
				
				<script src="../js/My97DatePicker/WdatePicker.js"
					type="text/javascript"></script>
				<script type="text/javascript">
					function checkForm() {
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



