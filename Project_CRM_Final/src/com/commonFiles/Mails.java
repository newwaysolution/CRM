package com.commonFiles;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.beans.UserBean;

public class Mails {
	public static void sendMail() {
		final String userName = "projectcrm@gmail.com";
		final String password = "crm12345";
		
		Properties props = new Properties();
		props.put("mail.smtp.auth" , true);
		props.put("mails.smtp.starttls.enable" , "true");
		props.put("mails.smtp.host" , "smtp.gmail.com");
		props.put("mail.smtp.port" , "587");
		
		Session session = Session.getInstance(props , new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(userName, password);
			}
		});
		
		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("projectcrm@gmail.com"));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("projectcrm@gmail.com"));
			message.setSubject("Testing Subject");
			message.setText("Dear Mail Crawler, " + "\n\n No spam to my email, please!!!");
			
			Transport.send(message);
			System.out.println("Done");
		}catch (MessagingException e) {
			throw new RuntimeException();
		}
	}
	
	public static void sendMail(String templatePath , UserBean userbean , String link) {
		final String userName = "projectcrm@gmial.com";
		final String password = "crm12345";
		
		Properties props = new Properties();
		props.put("mail.smtp.auth" , true);
		props.put("mail.smtp.starttls.enable" , "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port" , "587");
		
		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(userName, password);
			}
		});
		
		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("projectcrm@gmail.com"));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(userbean.getEmail()));
			message.setSubject("Verify your CRM Account..");
			
			String content = TemplateReader.getEmailTemplate(templatePath , userbean , link);
			message.setContent(content , "text/html");
			
			Transport.send(message);
			System.out.println("Done");
		}catch (MessagingException e) {
			throw new RuntimeException();
		}
	}
}
