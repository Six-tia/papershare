<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.myProject.WenXian.entity.*"%>
<%@ page
	import="com.myProject.WenXian.dao.*,com.myProject.WenXian.util.*,java.text.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>PDF预览</title>
    <style type="text/css">
        .lightbox {
            position: fixed;
            top: 0px;
            left: 0px;
            height: 100%;
            width: 100%;
            z-index: 7;
            opacity: 0.3;
            display: block;
            background-color: rgb(0, 0, 0);
            display: none;
        }

        .pop, iframe {
            position: absolute;
            left: 50%;
            top: 0;
            width: 893px;
            height: 100%;
            margin-left: -446.5px;
            z-index: 9;
        }
    </style>
    <script src="pdf.js" type="text/javascript"></script>
    <script type="text/javascript">
        function showPdf(isShow) {
            var state = "";
            if (isShow) {
                state = "block";
            } else {
                state = "none";
            }
            var pop = document.getElementById("pop");
            pop.style.display = state;
            var lightbox = document.getElementById("lightbox");
            lightbox.style.display = state;
        }

    </script>
</head>
<%
							Paper model = new PaperDao().GetModel(Integer.parseInt(request
									.getParameter("id")));
							//model.setClicks(model.getClicks() + 1);
							//new ArticleDao().Update(model);
						%>
<body>
    <ul>
        <li><a href="<%=model.getFileName() %>" target="pdfContainer" onclick="showPdf(true)">查看PDF</a></li>
    </ul>
    <div class="lightbox" id="lightbox"></div>
    <div id="pop" class="pop" >
      
        <iframe src="" frameborder="0" id="pdfContainer" name="pdfContainer"></iframe>
    </div>
</body>
</html>