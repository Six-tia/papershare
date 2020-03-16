<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.myProject.WenXian.entity.*"%>
<%@ page
	import="com.myProject.WenXian.dao.*,com.myProject.WenXian.util.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Paper添加</title>
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
	<form name="form1" action="../../Paper.do" method="post">
		<input type="hidden" name="action" value="add" />
		<div class="place">
			<span>当前位置：</span>
			<ul class="placeul">
				<li><a href="#">论文添加</a>
				</li>
			</ul>
		</div>
		<!--中间部分开始-->
		<div class="formbody">
			<div class="formtitle">
				<span>论文添加</span>
			</div>
			<!--主体表单开始-->
			<!--大文本框样式为textinput,下拉框样式为select1,下拉框需用<div class="vocation"></div>包含-->
			<ul class="forminfo">
				<li><label> 标题:</label> <input type="text" id="Title"
					name="Title" class="dfinput" /></li>
				<li><label> 摘要:</label> <input type="text" id="Abstract"
					name="Abstract" class="textinput" /></li>
				<li><label> 发表日期:</label> <input type="text" name="CTime"
					id="CTime"
					onclick="WdatePicker({el:'CTime','dateFmt':'yyyy-MM-dd'})"
					class="dfinput" /></li>
				<li><label> 刊物:</label> <input type="text" id="Pc" name="Pc"
					class="dfinput" />
					<input type="hidden" id="Creator"
					name="Creator" value="<%=session.getAttribute("userId").toString() %>" class="dfinput" />
					 <input type="hidden" id="CreatorName"
					name="CreatorName" class="dfinput" value="<%=session.getAttribute("userName").toString() %>"/>
					</li>
				<li><label> 文件:</label> <input type="text" id="FileName"
					name="FileName" class="dfinput" /> <input type="button"
					id="uploadFileName" value="上传" /> <script>
						KindEditor.ready(function(K) {
							var uploadbutton = K.uploadbutton({
								button : K('#uploadFileName')[0],
								fieldName : 'imgFile',
								url : '../../upload_json.jsp?dir=file',
								afterUpload : function(data) {
									if (data.error === 0) {
										var url = K.formatUrl(data.url,
												'absolute');
										K('#FileName').val(url);
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
					</script></li>
				<li><label> 经典程度:</label> <input type="text" id="Classic"
					name="Classic" value="0" class="dfinput" /></li>
				<script src="../js/My97DatePicker/WdatePicker.js"
					type="text/javascript"></script>
				<script type="text/javascript">
					function checkForm() {
						
						var intClassic = document.getElementById("Classic");
						if (!checkNum(intClassic.value)) {
							alert("经典程度必须是数字!");
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

