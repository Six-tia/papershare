/**  版本信息模板在安装目录下，可自行修改。
* Paper.cs
*
* 功 能： N/A
* 类 名： Paper
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
	public  class Paper
	{
		public Paper()
		{}
		private int Id;
		private String Title;
		private String Abstract;
		private String CTime;
		private String Pc;
		private String FileName;
		private int Creator;
		private String CreatorName;
		private int Classic;
		private String AddTime;
		private String Remark;
		public int getId()
		{
			return Id;}
		public void setId(int Id)
		{
			this.Id=Id;}
		public String getTitle()
		{
			return Title;}
		public void setTitle(String Title)
		{
			this.Title=Title;}
		public String getAbstract()
		{
			return Abstract;}
		public void setAbstract(String Abstract)
		{
			this.Abstract=Abstract;}
		public String getCTime()
		{
			return CTime;}
		public void setCTime(String CTime)
		{
			this.CTime=CTime;}
		public String getPc()
		{
			return Pc;}
		public void setPc(String Pc)
		{
			this.Pc=Pc;}
		public String getFileName()
		{
			return FileName;}
		public void setFileName(String FileName)
		{
			this.FileName=FileName;}
		public int getCreator()
		{
			return Creator;}
		public void setCreator(int Creator)
		{
			this.Creator=Creator;}
		public String getCreatorName()
		{
			return CreatorName;}
		public void setCreatorName(String CreatorName)
		{
			this.CreatorName=CreatorName;}
		public int getClassic()
		{
			return Classic;}
		public void setClassic(int Classic)
		{
			this.Classic=Classic;}
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

