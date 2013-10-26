package com.commonFiles;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.connect.DbConnect;

public class DbBean {
	
	public static void executeInsert(String query) throws Exception{
		Connection  connection=null;
		Statement stmt=null;
		try{
			connection = DbConnect.getConnection();
		    stmt = createStatement(connection);
			stmt.executeUpdate(query);
		}catch(Exception e) {
			System.out.println("DB-MSG:EI: inside executeInsert(String query)..."+query);
			e.printStackTrace(System.out);
			throw e;
		}finally{
			connection = null; stmt = null;
		}
	}
	
	public static ResultSet executeSelect(String query){
		PreparedStatement statement = null;
		ResultSet rs = null;
		Connection con = null;
		try{
			con = DbConnect.getConnection();
			statement = con.prepareStatement(query);
			rs = statement.executeQuery();
		}catch(Exception e){
			e.printStackTrace();
		}
		return rs;
	}
	
	public static int getRowCount(ResultSet resultSet){
		int size = 0;
		try {
		    resultSet.last();
		    size = resultSet.getRow();
		    resultSet.beforeFirst();
		}
		catch(Exception ex) {
		    return 0;
		}
		return size;
	}
	
	private static Statement createStatement(Connection connection) throws SQLException,Exception {
		Statement stmt =null;
		
		try{
			stmt=connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
		}catch(Exception e){
			System.out.println("DB-MSG:CS:inside createStatement(Connection connection)...");
			e.printStackTrace(System.out);
			throw e;
		}
		return stmt;
	}
}
