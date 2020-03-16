<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.myProject.WenXian.entity.*"%>
<%@ page
	import="com.myProject.WenXian.dao.*,com.myProject.WenXian.util.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Paper</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript">
        $(document).ready(function() {
            $(".click").click(function() {
                $(".tip").fadeIn(200);
            });

            $(".tiptop a").click(function() {
                $(".tip").fadeOut(200);
            });

            $(".sure").click(function() {
                $(".tip").fadeOut(100);
            });

            $(".cancel").click(function() {
                $(".tip").fadeOut(100);
            });

        });
    </script>
<script src="../js/My97DatePicker/WdatePicker.js"
					type="text/javascript"></script>
</head>
<body>
	<form name="form1" action="List.jsp" method="post">
		<div class="place">
			<span>当前位置:</span>
			<ul class="placeul">
				<li><a href="#">论文列表</a>
				</li>
			</ul>
		</div>
		<div class="rightinfo">
			<!--操作按钮开始===========================-->
			<!--操作按钮结束===========================-->
			<!--查询开始===========================-->
			<%
				request.setCharacterEncoding("UTF-8");
												String keys = request.getParameter("keys");
												String Date = request.getParameter("Date");
												String Title = request.getParameter("Title");
												String Abs = request.getParameter("Abs");
												String sw=" 1=1 ";
												if (keys != null && (!keys.equals(""))) {
												sw+=" and Id in(Select PaperId from PaperAuthor where AuthorId in(Select Id from Author where Name like '%"+keys+"%'))";
												}else{
												keys="";
												}
												if (Date != null && (!Date.equals(""))) {
												sw+=" and CTime='"+Date+"'";
												}else{
												Date="";
												}
												if (Title != null && (!Title.equals(""))) {
												sw+=" and Title like '%"+Title+"%'";
												}else{
												Title="";
												}
												if (Abs != null && (!Abs.equals(""))) {
												sw+=" and Abstract like '%"+Abs+"%'";
												}else{
												Abs="";
												}
												
			 %>
			<ul class="seachform">
				<li><label>论文作者：</label> <input type="text" name="keys" id="keys"
					class="scinput" value="<%=keys%>"/>
				</li>
				<li><label>发表日期：</label> <input type="text" name="Date" id="Date"
					class="scinput" onclick="WdatePicker({el:'Date','dateFmt':'yyyy-MM-dd'})" value="<%=Date%>"/>
				</li>
				<li><label>题目：</label> <input type="text" name="Title" id="Title"
					class="scinput" value="<%=Title%>"/>
				</li>
				<li><label>摘要：</label> <input type="text" name="Abs" id="Abs"
					class="scinput" value="<%=Abs%>"/>
				</li>
				<li><label>&nbsp;</label> <input type="submit" class="scbtn"
					value="查询" /></li>
			</ul>
			<!--查询结束===========================-->
			<!--列表 开始===========================-->
			<table class="tablelist">

				<thead>
					<tr>
						<th>标题</th>

						<th>发表日期</th>
						<th>刊物</th>
						<th>文件</th>
						<th>创建人</th>

						<th>经典程度</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<%
						PaperDao dal = new PaperDao();
												int pageSize = 10;
												int currentPage = 1;
												
												String role = session.getAttribute("role").toString();
												int id = Integer.parseInt(session.getAttribute("userId").toString());
														
												List<Paper> list = dal.GetListByPage(pageSize, currentPage, sw);
												if(list!=null&&list.size()>0){
												for (int i = 0; i < list.size(); i++) {
												Paper model = list.get(i);
					%>
					<tr>
						<td><%=model.getTitle()%></td>

						<td><%=model.getCTime()%></td>
						<td><%=model.getPc()%></td>
						<td><a href="<%=model.getFileName()%>">下载</a>
						</td>

						<td><%=model.getCreatorName()%></td>
						<td><%=model.getClassic()%></td>
						<td>
							<%
								if(role.equals("admin")||model.getCreator()==id){
							%> <a href="Modify.jsp?id=<%=model.getId()%>" class="tablelink">修改</a>&nbsp;
							<a href="../PaperAuthor/List.jsp?id=<%=model.getId()%>" class="tablelink">作者管理</a>&nbsp;<a
							href="javascript:void(0);"
							onclick="isDelete(<%=model.getId()%>);" class="tablelink">删除</a>
							<%
								}
							%>
						</td>
					</tr>
					<%
						}
												}
					%>
				</tbody>
				<script type="text/javascript">
	function isDelete(objId){
	if(confirm("您确定要删除吗？")){
	window.location.href="../../Paper.do?action=delete&id="+objId;
	}
	}
	</script>

			</table>
			<!--列表 结束===========================-->
			<!--p s===========================-->
			<div class="pagin">
				<%=dal.GetPager(pageSize,currentPage,sw)%>
			</div>
			<!--p e===========================-->
		</div>

		<script type="text/javascript">
        $('.tablelist tbody tr:odd').addClass('odd');
    </script>
	</form>
</body>
</html>
