/**  版本信息模板在安装目录下，可自行修改。
* Comment.cs
*
* 功 能： N/A
* 类 名： Comment
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
package com.myProject.WenXian.entity;
	public  class Comment
	{
		public Comment()
		{}
		private int Id;
		private int UserId;
		private int PaperId;
		private String Contents;
		private String Position;
		private String PTime;
		private int Zan;
		private String AddTime;
		private String Remark;
		public int getId()
		{
			return Id;}
		public void setId(int Id)
		{
			this.Id=Id;}
		public int getUserId()
		{
			return UserId;}
		public void setUserId(int UserId)
		{
			this.UserId=UserId;}
		public int getPaperId()
		{
			return PaperId;}
		public void setPaperId(int PaperId)
		{
			this.PaperId=PaperId;}
		public String getContents()
		{
			return Contents;}
		public void setContents(String Contents)
		{
			this.Contents=Contents;}
		public String getPosition()
		{
			return Position;}
		public void setPosition(String Position)
		{
			this.Position=Position;}
		public String getPTime()
		{
			return PTime;}
		public void setPTime(String PTime)
		{
			this.PTime=PTime;}
		public int getZan()
		{
			return Zan;}
		public void setZan(int Zan)
		{
			this.Zan=Zan;}
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

