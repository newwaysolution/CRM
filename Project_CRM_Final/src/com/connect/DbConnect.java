package com.connect;

import java.sql.Connection;

import java.sql.DriverManager;

import com.commonFiles.CommonProps;

public class DbConnect {
	public static Connection getConnection(){
		Connection con = null;
		try{
			Class.forName(CommonProps.DRIVER_NAME);
			con = DriverManager.getConnection(CommonProps.CONNECTION_STRING);
		}catch(Exception e){
			e.printStackTrace();
		}
		return con;
	}
}
