<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.myProject.WenXian.entity.*"%>
<%@ page
	import="com.myProject.WenXian.dao.*,com.myProject.WenXian.util.*,java.text.*"%>
<!--顶部 开始-->
<div class="top">
	<div class="top_main">
		<div class="top_left">您好，欢迎进入</div>
		<ul class="top_right">

			<a href="#">收藏</a>

		</ul>
		<div class="clear"></div>
	</div>
</div>
<!--顶部 over-->
<!--banner 开始-->
<div class="banner">
	<div class="banner_text">PaperShare科技文献交流平台</div>
</div>
<!--banner over-->
<!--导航 开始-->
<div class="navbg">
	<ul id="nav" class="nav clearfix">
		<li class="nLi on">
			<h3>
				<a href="Index.jsp">首页</a>
			</h3></li>
		<li class="nLi">
			<!--假设当前频道为"预告片"，手动或后台程序添加titOnClassName类名（默认是'on'），相当于设置参数defaultIndex:1。若同时设置参数returnDefault:true，则鼠标移走后0.3秒返回当前频道-->
			<h3>
				<a href="Aritcle.jsp">最近上传</a>
			</h3></li>
		
		<li class="nLi">
			<!--假设当前频道为"预告片"，手动或后台程序添加titOnClassName类名（默认是'on'），相当于设置参数defaultIndex:1。若同时设置参数returnDefault:true，则鼠标移走后0.3秒返回当前频道-->
			<h3>
				<a href="Aritcle.jsp">热点论文</a>
			</h3></li>
		<li class="nLi">
			<!--假设当前频道为"预告片"，手动或后台程序添加titOnClassName类名（默认是'on'），相当于设置参数defaultIndex:1。若同时设置参数returnDefault:true，则鼠标移走后0.3秒返回当前频道-->
			<h3>
				<a href="Aritcle.jsp">经典论文</a>
			</h3></li>
		<li class="nLi">
			<h3>
				<a href="Login.jsp">用户登录</a>
			</h3></li>

		<li class="nLi">
			<!--假设当前频道为"预告片"，手动或后台程序添加titOnClassName类名（默认是'on'），相当于设置参数defaultIndex:1。若同时设置参数returnDefault:true，则鼠标移走后0.3秒返回当前频道-->
			<h3>
				<a href="../Web/index.htm">个人中心</a>
			</h3></li>
	</ul>

	<script id="jsID" type="text/javascript">
		jQuery("#nav").slide({
			type : "menu", // 效果类型，针对菜单/导航而引入的参数（默认slide）
			titCell : ".nLi", //鼠标触发对象
			targetCell : ".sub", //titCell里面包含的要显示/消失的对象
			effect : "slideDown", //targetCell下拉效果
			delayTime : 300, //效果时间
			triggerTime : 0, //鼠标延迟触发时间（默认150）
			returnDefault : true
		//鼠标移走后返回默认状态，例如默认频道是"预告片"，鼠标移走后会返回"预告片"（默认false）
		});
	</script>

	<div class="clear"></div>
</div>
<!--导航 over-->
<div class="ba_bottom"></div>
