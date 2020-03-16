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
package com.myProject.WenXian.entity;
	public  class UserInfo
	{
		public UserInfo()
		{}
		private int Id;
		private String UName;
		private String UPasswod;
		private String UImgURL;
		private String UEmail;
		private String UTel;
		private String UStatus;
		private String Role;
		private String AddTime;
		private String Remark;
		public int getId()
		{
			return Id;}
		public void setId(int Id)
		{
			this.Id=Id;}
		public String getUName()
		{
			return UName;}
		public void setUName(String UName)
		{
			this.UName=UName;}
		public String getUPasswod()
		{
			return UPasswod;}
		public void setUPasswod(String UPasswod)
		{
			this.UPasswod=UPasswod;}
		public String getUImgURL()
		{
			return UImgURL;}
		public void setUImgURL(String UImgURL)
		{
			this.UImgURL=UImgURL;}
		public String getUEmail()
		{
			return UEmail;}
		public void setUEmail(String UEmail)
		{
			this.UEmail=UEmail;}
		public String getUTel()
		{
			return UTel;}
		public void setUTel(String UTel)
		{
			this.UTel=UTel;}
		public String getUStatus()
		{
			return UStatus;}
		public void setUStatus(String UStatus)
		{
			this.UStatus=UStatus;}
		public String getRole()
		{
			return Role;}
		public void setRole(String Role)
		{
			this.Role=Role;}
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

