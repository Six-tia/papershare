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
package com.myProject.WenXian.entity;
	public  class Author
	{
		public Author()
		{}
		private int Id;
		private String Name;
		private String Company;
		private String Email;
		private String AddTime;
		private String Remark;
		public int getId()
		{
			return Id;}
		public void setId(int Id)
		{
			this.Id=Id;}
		public String getName()
		{
			return Name;}
		public void setName(String Name)
		{
			this.Name=Name;}
		public String getCompany()
		{
			return Company;}
		public void setCompany(String Company)
		{
			this.Company=Company;}
		public String getEmail()
		{
			return Email;}
		public void setEmail(String Email)
		{
			this.Email=Email;}
		public String getAddTime()
		{
			return AddTime;}
		public void setAddTime(String AddTime)
		{
			this.AddTime=AddTime;}
		public String getRemark()
		{
			return Remark;}
		public void setRemark(String Remark)
		{
			this.Remark=Remark;}

	}

