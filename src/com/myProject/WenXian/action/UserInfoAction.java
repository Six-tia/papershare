/**  版本信息模板在安装目录下，可自行修改。
 * UserInfo.cs
 *
 * 功 能： N/A
 * 类 名： UserInfo
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

public class UserInfoAction extends HttpServlet {
	public void destroy() {
		destroy();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		UserInfo model = new UserInfo();
		UserInfoDao dal = new UserInfoDao();
		String action = request.getParameter("action");
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = format.format(new java.util.Date());
		HttpSession session = request.getSession();
		// UserInfo user =(UserInfo)session.getAttribute("user");
		if (action.equals("add")) {
			model.setUName(request.getParameter("UName"));
			model.setUPasswod(request.getParameter("UPasswod"));
			model.setUImgURL(request.getParameter("UImgURL"));
			model.setUEmail(request.getParameter("UEmail"));
			model.setUTel(request.getParameter("UTel"));
			model.setUStatus(request.getParameter("UStatus"));
			model.setRole(request.getParameter("Role"));
			model.setAddTime(time);
			model.setRemark("");
			if (dal.Add(model) > 0) {
				out.print(CommonMethod.outScript("操作成功!", "back"));
			}
		}
		if (action.equals("update")) {
			model = dal.GetModel(Integer.parseInt(request.getParameter("id")));
			model.setUName(request.getParameter("UName"));
			model.setUPasswod(request.getParameter("UPasswod"));
			model.setUImgURL(request.getParameter("UImgURL"));
			model.setUEmail(request.getParameter("UEmail"));
			model.setUTel(request.getParameter("UTel"));
			model.setUStatus(request.getParameter("UStatus"));
			model.setRole(request.getParameter("Role"));
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
		if (action.equals("login")) {
			String name = request.getParameter("txtName");
			String pwd = request.getParameter("txtPwd");

			session.setAttribute("name", name);
			String sw = " UName='" + name + "' and UPasswod='" + pwd + "' ";
			List<UserInfo> el = new UserInfoDao().GetList(sw);
			if (el != null && el.size() > 0) {
				session.setAttribute("userId", el.get(0).getId());
				session.setAttribute("userName", el.get(0).getUName());
				session.setAttribute("role", el.get(0).getRole());
				session.setAttribute("user", el.get(0));
				response.sendRedirect("Web/index.htm");
			} else {
				out.print(CommonMethod.outScript("帐号或密码错误!", "back"));
			}
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

	public void init() throws ServletException {// Put your code here;
	}
}
