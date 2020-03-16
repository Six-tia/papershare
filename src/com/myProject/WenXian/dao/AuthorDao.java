/**  版本信息模板在安装目录下，可自行修改。
* Author.cs
*
* 功 能： N/A
* 类 名： Author
*
* Ver    变更日期             负责人  变更内容
* ───────────────────────────────────
* V0.01  2018-04-07 09:03:59   N/A    初版
*
* Copyright (c) 2012 Maticsoft Corporation. All rights reserved.
*┌──────────────────────────────────┐
*│　此技术信息为本公司机密信息，未经本公司书面同意禁止向第三方披露．　│
*│　版权所有：动软卓越（北京）科技有限公司　　　　　　　　　　　　　　│
*└──────────────────────────────────┘
*/
package com.myProject.WenXian.dao;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.servlet.jsp.jstl.sql.Result;
import com.myProject.WenXian.entity.*;
	public class AuthorDao extends ParentDao 
	{
/*** 获得最大ID** @return*/
		public int GetMaxId()
		{
			sql = "select max(id) from Author";
			result = Integer.parseInt(bd.getSingle(sql, null).toString());
		return result;
		}



		/***添加** @return*/
		public int  Add(Author model)
		{
		 sql = "insert into Author( Name,Company,Email,AddTime,Remark) values (?,?,?,?,?)";
			paramsList = new ArrayList<Object>();
						paramsList.add(model.getName());
			paramsList.add(model.getCompany());
			paramsList.add(model.getEmail());
			paramsList.add(model.getAddTime());
			paramsList.add(model.getRemark());

			result = bd.getAffectRow(sql, paramsList);
			return result;
		}

		/***修改** @return*/
		public int Update(Author model)
		{
		 sql = " update  Author set  Name=?,Company=?,Email=?,AddTime=?,Remark=? where Id=? ";
			paramsList = new ArrayList<Object>();
						paramsList.add(model.getName());
			paramsList.add(model.getCompany());
			paramsList.add(model.getEmail());
			paramsList.add(model.getAddTime());
			paramsList.add(model.getRemark());
			paramsList.add(model.getId());

			result = bd.getAffectRow(sql, paramsList);
			return result;
		}

		/***删除** @return*/
		public int Delete(int id)
		{
			sql ="delete from Author where id="+id;
			result = bd.getAffectRow(sql, paramsList);
			return result;
		}

		/***得到实体** @return*/
		public Author GetModel(int id)
		{
			 sql="select * from Author where id="+id;
			Author model=null;
			Result res = bd.getResultSet(sql, paramsList);
			if (res != null && res.getRowCount() == 1) {// 存在数据
			// Result的每一行数据以key—value的形式保存（即Map）
			model = new Author();
			Map row = res.getRows()[0];
					model.setId((Integer)row.get("Id"));
					model.setName((String)row.get("Name"));
					model.setCompany((String)row.get("Company"));
					model.setEmail((String)row.get("Email"));
					model.setAddTime((String)row.get("AddTime"));
					model.setRemark((String)row.get("Remark"));
		}				return model;
		}

		/***得到列表** @return*/
		public List<Author> GetList(String strWhere)
		{
			List<Author> list = null;
			sql = "select * from Author " ;
			if (!strWhere.equals("")) {
					sql += " where " + strWhere;
			}
					sql += " order by id Desc ";
			Result res = bd.getResultSet(sql, paramsList);
			if (res != null && res.getRowCount() >0) {// 存在数据
			 list = new ArrayList<Author>();//开始循环
			 for (int i = 0; i < res.getRowCount(); i++) {
			// Result的每一行数据以key—value的形式保存（即Map）
			Map row = res.getRows()[i];
			Author model = new Author();
					model.setId((Integer)row.get("Id"));
					model.setName((String)row.get("Name"));
					model.setCompany((String)row.get("Company"));
					model.setEmail((String)row.get("Email"));
					model.setAddTime((String)row.get("AddTime"));
					model.setRemark((String)row.get("Remark"));
					list.add(model);
					}
			}
			return list;
		}

		/*** 得到分页列表** 第一页是1，SQLServer版本 @return */
		public List<Author> GetListByPage(int pageSize, int currentPage,String strWhere)
		{
			if(strWhere.equals("")) {
					strWhere = " 1=1 ";
			}
			List<Author> list = null;
			sql = "select top " + pageSize + " * from Author " ;
			String sw = " where " + strWhere + " order by id Desc ";
			sql +=" where " + strWhere ;
			if (currentPage > 1) {
					sql += " and id not in(select top "+ (pageSize * (currentPage - 1)) + " id from Author "+ sw + " ) ";
			}
					sql += " order by id Desc ";
			Result res = bd.getResultSet(sql, paramsList);
			if (res != null && res.getRowCount() >0) {// 存在数据
			 list = new ArrayList<Author>();//开始循环
			 for (int i = 0; i < res.getRowCount(); i++) {
			// Result的每一行数据以key—value的形式保存（即Map）
			Map row = res.getRows()[i];
			Author model = new Author();
					model.setId((Integer)row.get("Id"));
					model.setName((String)row.get("Name"));
					model.setCompany((String)row.get("Company"));
					model.setEmail((String)row.get("Email"));
					model.setAddTime((String)row.get("AddTime"));
					model.setRemark((String)row.get("Remark"));
					list.add(model);
					}
			}
			return list;
		}
		/*** 得到分页列表** 第一页是1，MySQL版本 @return */
		public List<Author> GetListByPage2(int pageSize, int currentPage,String strWhere)
		{
			if(strWhere.equals("")) {
					strWhere = " 1=1 ";
			}
			List<Author> list = null;
			int startIndex = 0;// mysql行索引从0开始
			int endIndex = pageSize;
			sql = "select  * from Author " ;
			String sw = " where " + strWhere + " order by id Desc ";
			//sql +=" where " + strWhere ;
			if (currentPage > 1) {
					startIndex = pageSize * (currentPage - 1) ;
					//endIndex = pageSize * currentPage;
			}
			sql += sw + " limit " + startIndex + "," + endIndex;
			Result res = bd.getResultSet(sql, paramsList);
			if (res != null && res.getRowCount() >0) {// 存在数据
			 list = new ArrayList<Author>();//开始循环
			 for (int i = 0; i < res.getRowCount(); i++) {
			// Result的每一行数据以key—value的形式保存（即Map）
			Map row = res.getRows()[i];
			Author model = new Author();
					model.setId((Integer)row.get("Id"));
					model.setName((String)row.get("Name"));
					model.setCompany((String)row.get("Company"));
					model.setEmail((String)row.get("Email"));
					model.setAddTime((String)row.get("AddTime"));
					model.setRemark((String)row.get("Remark"));
					list.add(model);
					}
			}
			return list;
		}
		/** 得到分页信息 */
		public String GetPager(int pageSize, int currentPage, String strWhere) 
		{
			List<Author> list = this.GetList(strWhere);
			int totalCount = 0;
			if (list != null && list.size() > 0) {
			totalCount = list.size();
		}else {
		return "";
		}
			int pageCount = 0;
			if (totalCount % pageSize == 0) {
					pageCount = totalCount / pageSize;
			} else {
					pageCount = (totalCount / pageSize) + 1;
			}
			String strPage = "";
			strPage += ("<div class=\"message\">共有<i class=\"blue\">" + totalCount + "</i>条记录&nbsp");
			strPage += ("总页数:" + pageCount);
			strPage += ("&nbsp每页显示条数:" + pageSize);
			strPage += ("&nbsp当前是第<i class=\"blue\">" + (currentPage) + "</i>页&nbsp");
			strPage += (" <ul class=\"paginList\">");
			strPage += (" <li class=\"paginItem\"><a href=\"List.jsp?page=1\"><span class=\"pagepre\"></span></a></li>");
			strPage += ("<li class=\"paginItem\"><a href=\"List.jsp?page="+ (currentPage > 1 ? currentPage - 1 : 1) + "\">UP</a></li>");
			strPage += ("<li class=\"paginItem\"><a href=\"List.jsp?page="+ (currentPage < pageCount ? currentPage + 1 : currentPage) + "\">Next</a></li>");
			strPage += (" <li class=\"paginItem\"><a href=\"List.jsp?page="+ pageCount + "\"><span class=\"pagenxt\"></span></a></li>");
			strPage += (" </ul>");
			strPage += (" </ul>");
			return strPage;
			}


	}

