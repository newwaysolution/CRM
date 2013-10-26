package com.commonFiles;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

import com.beans.UserBean;

public class TemplateReader {

	public static String getEmailTemplate(String templatePath, UserBean userBean, String link) {
		String content = "";
		java.io.File file = new java.io.File(templatePath);
		BufferedReader breader = null;
		try {
			String currentLine;
			breader = new BufferedReader(new FileReader(file));
			while((currentLine = breader.readLine())!=null){
				if(currentLine.contains("USER"))
					currentLine = currentLine.replace("USER", userBean.getUserName());
				if(currentLine.contains("ACTIVATIONLINK"))
					currentLine = currentLine.replace("ACTIVATIONLINK", link);
				content += (currentLine + "<br />");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			try {
				breader.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return content;
	}
	
	public static void main(String ar[]){
		UserBean userBean = new UserBean();
		userBean.setUserName("parth.9365");
		String content = TemplateReader.getEmailTemplate("D:\\workspace\\ProjectCRM\\WebContent\\templates\\Email_template.txt", userBean,"");
		System.out.println(content);
	}
}
