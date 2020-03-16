<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.myProject.WenXian.entity.*"%>
<%@ page import="com.myProject.WenXian.dao.*,com.myProject.WenXian.util.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Comment添加</title>
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
		<script charset="utf-8"
			src=".../../kindeditor/plugins/code/prettify.js">
</script>
    <script type="text/javascript">
        $(document).ready(function(e) {
            $(".select1").uedSelect({
                width: 345
            });
            $(".select2").uedSelect({
                width: 167
            });
            $(".select3").uedSelect({
                width: 100
            });
        });
    </script>
    <script type="text/javascript">
        $('.tablelist tbody tr:odd').addClass('odd');
    </script>
	</head>
<body>
<form name="form1" action="../../Comment.do" method="post">
<input type="hidden" name="action" value="add"/>
 <div class="place">
        <span>当前位置：</span>
        <ul class="placeul">
            <li><a href="#">首页</a></li>
        </ul>
    </div>
	<!--中间部分开始-->
    <div class="formbody">
        <div class="formtitle">
            <span>Comment添加</span></div>
			<!--主体表单开始-->
			<!--大文本框样式为textinput,下拉框样式为select1,下拉框需用<div class="vocation"></div>包含-->
        <ul class="forminfo">
			 <li>
	<label>
		用户:</label>
		<input type="text" id="UserId" name="UserId" value="0" class="dfinput" />
		</li>
	 <li>
	<label>
		论文:</label>
		<input type="text" id="PaperId" name="PaperId" value="0" class="dfinput" />
		</li>
	 <li>
	<label>
		评论内容:</label>
		<textarea style="width: 700px; height: 180px; visibility: hidden;" id="Contents" name="Contents"></textarea>
		<script>
		var ediContents;KindEditor.ready(function(K) {ediContents = K.create('#Contents', {resizeType : 1,allowPreviewEmoticons : true,allowImageUpload : true,uploadJson : '../../upload_json.jsp',fileManagerJson : '../../file_manager_json.jsp'});});
		</script>
		</li>
	 <li>
	<label>
		句段位置:</label>
		<input type="text" id="Position" name="Position"  class="dfinput" />
		</li>
	 <li>
	<label>
		评论时间:</label>
		 <input type="text"  name="PTime" id="PTime" onclick="WdatePicker({el:'PTime','dateFmt':'yyyy-MM-dd'})" class="dfinput" />
		</li>
	 <li>
	<label>
		点赞数:</label>
		<input type="text" id="Zan" name="Zan" value="0" class="dfinput" />
		</li>
<script src="../js/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
		<script type="text/javascript" >
		 function checkForm(){
		var intUserId=document.getElementById("UserId");
		if(!checkNum(intUserId.value)){
		alert("用户必须是数字!");
		return false;
		}
		var intPaperId=document.getElementById("PaperId");
		if(!checkNum(intPaperId.value)){
		alert("论文必须是数字!");
		return false;
		}
		var intZan=document.getElementById("Zan");
		if(!checkNum(intZan.value)){
		alert("点赞数必须是数字!");
		return false;
		}
		ediContents.sync();		document.forms[0].submit();		}	</script>
            <li>
               <label>
                    &nbsp;</label>
					<input name="btnSubmit" type="button" class="btn" value="提交" onclick="checkForm();"/>
			</li>
        </ul>
		 <!--主体表单结束-->
    </div>
	<!--中间结束-->
  </form>
</body>
</html>

