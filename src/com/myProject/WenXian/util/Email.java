package com.myProject.WenXian.util;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class Email {
	  //private static final Logger LOGGER = Logger.getLogger(SendMail.class);
	    

	    public static void send(String subject, String content, String[] to,String host,String from,String password) {
//	    	 String host = "smtp."+host".com"; // �����ʼ�������
//		     String from = "635686848@qq.com"; // �ʼ���������¼�û���,�������ʼ���ַ
//		     String password = "123456"; // �ʼ���������¼����
	        try {
	            Properties props = new Properties();
	            props.put("mail.smtp.host", host);
	            props.put("mail.smtp.auth", "true");

	            props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	            props.setProperty("mail.smtp.socketFactory.fallback", "false");
	            props.setProperty("mail.smtp.port", "465"); // gmailʹ��465
	            props.setProperty("mail.smtp.socketFactory.port", "465");
	            Session ssn = Session.getInstance(props, null);
	            MimeMessage message = new MimeMessage(ssn);
	            InternetAddress fromAddress;
	            fromAddress = new InternetAddress(from);
	            message.setFrom(fromAddress);
	            InternetAddress[] toAddress = new InternetAddress[to.length];
	            for (int i = 0; i < to.length; i++) {
	                toAddress[i] = new InternetAddress(to[i]);
	            }
	            for (int i = 0; i < toAddress.length; i++) {
	                message.addRecipient(Message.RecipientType.TO, toAddress[i]);
	            }
	            message.setSubject(subject);
	            message.setText(content);
	            Transport transport = ssn.getTransport("smtp");
	            transport.connect(host, from, password);
	            transport.sendMessage(message, message.getRecipients(Message.RecipientType.TO));
	            transport.close();
	            //LOGGER.info("send mail success!");
	        } catch (Throwable e) {
	            //LOGGER.info("send mail failed", e);
	        }
	    }

//	public static void main(String[] args) {
//	        send("����", "�ʼ���������", new String[]{"635686848@qq.com","hanshiweihx@163.com"});
//	    }

	}

