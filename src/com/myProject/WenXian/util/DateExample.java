package com.myProject.WenXian.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateExample {

	public DateExample() {
	}

	public static long fromDateStringToLong(String inVal) { // �˷�������ʱ�����
		Date date = null; // ����ʱ������
		SimpleDateFormat inputFormat = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		try {
			date = inputFormat.parse(inVal); // ���ַ���ת����������
		} catch (Exception e) {
			e.printStackTrace();
		}
		return date.getTime(); // ���غ�����
	}

	private static String dqsj() { // �˷������ڻ�õ�ǰϵͳʱ�䣨��ʽ����2007-11-6
									// 15:10:58��
		Date date = new Date(); // ʵ����������
		String today = date.toLocaleString(); // ��ȡ��ǰʱ��
		// System.out.println("��õ�ǰϵͳʱ�� " + today); // ��ʾ
		return today; // ���ص�ǰʱ��
	}

	public static void main(String[] args) {
		String dqsj = dqsj(); // ���String dqsj = dqsj(); //��õ�ǰϵͳʱ��
		DateExample df = new DateExample(); // ʵ���
//
//		long startT = df.fromDateStringToLong("2004-03-03 16:50:23"); // �����ϻ�ʱ��
//		long endT = df.fromDateStringToLong("2004-03-03 14:20:23"); // �����»�ʱ��
//
//		long ss = (startT - endT) / (1000); // 相差秒
//		int MM = (int) ss / 60; // 相差分
//		int hh = (int) ss / 3600; // 小时
//		int dd = (int) hh / 24; // 天
//
//		System.out.println("天" + dd + "小时" + hh + "分钟" + MM + " 秒" + ss);
		df.GetTimeCha("s", "2004-03-03 14:20:23", "2004-03-03 16:00:37");

	}

	public static String GetTimeCha(String type, String st, String et) {
		DateExample df = new DateExample(); // ʵ���

		long startT = df.fromDateStringToLong(st); // �����ϻ�ʱ��
		long endT = df.fromDateStringToLong(et); // �����»�ʱ��

		long ss = (endT - startT) / (1000); // 相差秒
		int MM = (int) ss / 60; // 相差分
		int hh = (int) ss / 3600; // 小时
		int dd = (int) hh / 24; // 天
		System.out.println("天" + dd + "小时" + hh + "分钟" + MM + " 秒" + ss);
		if (type.equals("h")) {
			return hh + "";
		}
		if (type.equals("m")) {
			return MM + "";
		}
		if (type.equals("s")) {
			return ss + "";
		}
		return dd + "";

	}

}
