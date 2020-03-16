<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.myProject.WenXian.entity.*"%>
<%@ page import="com.myProject.WenXian.dao.*,com.myProject.WenXian.util.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>PaperAuthor编辑页面</title>
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
<form name="form1" action="../../PaperAuthor.do" method="post">
<input type="hidden" name="action" value="update"/>
<input type="hidden" name="id" value="<%=request.getParameter("id") %>"/>
<%
	PaperAuthor model = new PaperAuthorDao().GetModel(Integer.parseInt(request.getParameter("id")));
%>
<div class="place">
        <span>当前位置：</span>
        <ul class="placeul">
            <li><a href="#">首页</a></li>
        </ul>
    </div>
	<!--中间部分开始-->
    <div class="formbody">
        <div class="formtitle">
            <span>PaperAuthor编辑</span></div>
			<!--主体表单开始-->
			<!--大文本框样式为textinput,下拉框样式为select1,下拉框需用<div class="vocation"></div>包含-->
        <ul class="forminfo">
		 	 <li>
	<label>
		作者:</label>
		<input type="text" id="AuthorId" name="AuthorId" value="<%=model.getAuthorId() %>" class="dfinput" />
		</li>
	 <li>
	<label>
		论文:</label>
		<input type="text" id="PaperId" name="PaperId" value="<%=model.getPaperId() %>" class="dfinput" />
		</li>
	 <li>
	<label>
		是否是通讯作者:</label>
		<input type="text" id="IsTongXun" name="IsTongXun" value="<%=model.getIsTongXun() %>" class="dfinput" />
		</li>
	 <li>
	<label>
		排序:</label>
		<input type="text" id="SortId" name="SortId" value="<%=model.getSortId() %>" class="dfinput" />
		</li>
<script src="../js/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
		<script type="text/javascript" >
		 function checkForm(){
		var intAuthorId=document.getElementById("AuthorId");
		if(!checkNum(intAuthorId.value)){
		alert("作者必须是数字!");
		return false;
		}
		var intPaperId=document.getElementById("PaperId");
		if(!checkNum(intPaperId.value)){
		alert("论文必须是数字!");
		return false;
		}
		var intSortId=document.getElementById("SortId");
		if(!checkNum(intSortId.value)){
		alert("排序必须是数字!");
		return false;
		}
				document.forms[0].submit();		}	</script>
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



