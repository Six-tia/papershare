/**  版本信息模板在安装目录下，可自行修改。
* PaperAuthor.cs
*
* 功 能： N/A
* 类 名： PaperAuthor
*
* Ver    变更日期             负责人  变更内容
* ───────────────────────────────────
* V0.01  2018-04-07 09:04:00   N/A    初版
*
* Copyright (c) 2012 Maticsoft Corporation. All rights reserved.
*┌──────────────────────────────────┐
*│　此技术信息为本公司机密信息，未经本公司书面同意禁止向第三方披露．　│
*│　版权所有：动软卓越（北京）科技有限公司　　　　　　　　　　　　　　│
*└──────────────────────────────────┘
*/
package com.myProject.WenXian.action;
import java.io.IOException;
import com.myProject.WenXian.util.*;
import java.io.PrintWriter;
import java.util.*;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.myProject.WenXian.util.*;
import com.myProject.WenXian.entity.*;
import com.myProject.WenXian.dao.*;
	public  class PaperAuthorAction extends HttpServlet 
	{
		public void destroy()
		{destroy();}
		public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
		{
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		PaperAuthor  model = new PaperAuthor();
		PaperAuthorDao  dal  = new PaperAuthorDao();
		String action = request.getParameter("action");
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = format.format(new java.util.Date());
		HttpSession session=request.getSession();
		//UserInfo user =(UserInfo)session.getAttribute("user");
		if (action.equals("add")) {
		model.setAuthorId(Integer.parseInt(request.getParameter("AuthorId")));
		model.setPaperId(Integer.parseInt(request.getParameter("PaperId")));
		model.setIsTongXun(request.getParameter("IsTongXun"));
		model.setSortId(Integer.parseInt(request.getParameter("SortId")));
		model.setAddTime(time);
		model.setRemark("");
		if (dal.Add(model) > 0) {
		out.print(CommonMethod.outScript("添加操作成功!", "back"));
		}
		}
		if (action.equals("update")) {
		model = dal.GetModel(Integer.parseInt(request.getParameter("id")));
		model.setAuthorId(Integer.parseInt(request.getParameter("AuthorId")));
		model.setPaperId(Integer.parseInt(request.getParameter("PaperId")));
		model.setIsTongXun(request.getParameter("IsTongXun"));
		model.setSortId(Integer.parseInt(request.getParameter("SortId")));
		model.setAddTime(time);
		model.setRemark("");
		if (dal.Update(model) > 0) {
		out.print(CommonMethod.outScript("修改操作成功!", "back"));
		}
		}
		if (action.equals("delete")) {
		int id = Integer.parseInt(request.getParameter("id"));
		if (dal.Delete(id) > 0) {
		out.print(CommonMethod.outScript("删除操作成功!", "back"));
		}
		}
		}
		public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
		{this.doGet(request, response);}
		public void init() throws ServletException
		{// Put your code here;
		}
}

