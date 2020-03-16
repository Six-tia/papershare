<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.myProject.WenXian.entity.*"%>
<%@ page import="com.myProject.WenXian.dao.*,com.myProject.WenXian.util.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>UserInfo添加</title>
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
<form name="form1" action="../../UserInfo.do" method="post">
<input type="hidden" name="action" value="add"/>
 <div class="place">
        <span>当前位置：</span>
        <ul class="placeul">
            <li><a href="#">用户添加</a></li>
        </ul>
    </div>
	<!--中间部分开始-->
    <div class="formbody">
        <div class="formtitle">
            <span>用户添加</span></div>
			<!--主体表单开始-->
			<!--大文本框样式为textinput,下拉框样式为select1,下拉框需用<div class="vocation"></div>包含-->
        <ul class="forminfo">
			 <li>
	<label>
		用户名:</label>
		<input type="text" id="UName" name="UName"  class="dfinput" />
		</li>
	 <li>
	<label>
		密码:</label>
		<input type="text" id="UPasswod" name="UPasswod"  class="dfinput" />
		</li>
	 <li>
	<label>
		头像:</label>
		<input type="text" id="UImgURL" name="UImgURL"  class="dfinput" />
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
		</li>
	 <li>
	<label>
		邮箱:</label>
		<input type="text" id="UEmail" name="UEmail"  class="dfinput" />
		</li>
	 <li>
	<label>
		电话:</label>
		<input type="text" id="UTel" name="UTel"  class="dfinput" />
		</li>
	 <li>
	<label>
		状态:</label>
		<div class="vocation"><select name="UStatus"
					class="select1">
						
						<option value="可用">
							可用
						</option>
						<option value="冻结">
							冻结
						</option>
				</select> 
				</div> 
				
		
		</li>
	 <li>
	<label>
		角色:</label>
		<div class="vocation"><select name="Role"
					class="select1">
						
						<option value="admin">
							管理员
						</option>
						<option value="user">
							用户
						</option>
				</select> 
				</div> 
		</li>
<script src="../js/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
		<script type="text/javascript" >
		 function checkForm(){
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

