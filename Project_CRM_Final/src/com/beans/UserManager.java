package com.beans;


import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import com.commonFiles.DbBean;
import com.beans.UserBean;



public class UserManager {
	
	public static void saveUser(UserBean userBean)  {
		String query="insert into UserTable (FirstName,LastName,UserName,Password,Company,Role,Email,Address,City,PinCode,ContactNo,IsEnable,VerificationId,DateCreated,DateModified,IsVerified) values ('"+userBean.getFirstName()+"','"+userBean.getLastName()+"','"+userBean.getUserName()+"','"+userBean.getPassword()+"','"+userBean.getCompany()+"','"+userBean.getRole()+"','"+userBean.getEmail()+"','"+userBean.getAddress()+"','"+userBean.getCity()+"','"+userBean.getPinCode()+"','"+userBean.getContactNo()+"','"+userBean.getIsEnable()+"',NEWID(),GETDATE(),GETDATE(),'0')";
		try {
			DbBean.executeInsert(query);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
	
	public static boolean isValidCredential(String username,String password,String role){
		String query = "select password from usertable where UserName = '"+username+"' and Role = '"+role+"'";
		System.out.println(query);
		ResultSet rs = DbBean.executeSelect(query);
		try {
			while(rs.next()){
				if(rs.getString("password").equals(password))
					return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public static UserBean createEntityFromUserName(String username) {
		String query = "select UserId, FirstName, LastName,Password,Company, Role,Email,ContactNo,Address,City,PinCode,IsEnable,Datecreated,DateModified,CreatedBy,ModifiedBy,IsVerified from UserTable where UserName = '"+username+"'";
		ResultSet resultSet = DbBean.executeSelect(query);
		UserBean userBean = new UserBean();
		try {
			while(resultSet.next()){
				
				userBean.setUserName(username);
				userBean.setFirstName(resultSet.getString("FirstName"));
				userBean.setLastName(resultSet.getString("LastName"));
				userBean.setEmail(resultSet.getString("Email"));
				userBean.setContactNo(resultSet.getString("ContactNo"));
				userBean.setRole(resultSet.getString("Role"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return userBean;
	}

	
	public static ResultSet searchUserDetails(HttpServletRequest request) {
		String whereClause=buildWhereClause(request);
		String query="select * from UserTable " + whereClause;
		System.out.println(query);
		ResultSet searchuser=DbBean.executeSelect(query);
		return searchuser;
	}

	private static String buildWhereClause(HttpServletRequest request) {
		String wherepart = "where 1=1";
		if(request.getParameter("firstName")!=null && !request.getParameter("firstName").equalsIgnoreCase("")){
			wherepart += " and FirstName like '%"+request.getParameter("firstName")+"%'";
		}
		if(request.getParameter("lastName")!=null && !request.getParameter("lastName").equalsIgnoreCase("")){
			wherepart += " and LatsName like '%"+request.getParameter("lastName")+"%'";
		}
		if(request.getParameter("UserName")!=null && !request.getParameter("UserName").equalsIgnoreCase("")){
			wherepart += " and UserName like '%"+request.getParameter("UserName")+"%'";
		}
		if(request.getParameter("email")!=null && !request.getParameter("email").equalsIgnoreCase("")){
			wherepart += " and Email like '%"+request.getParameter("email")+"%'";
		}
		if(request.getParameter("contactNo")!=null && !request.getParameter("contactNo").equalsIgnoreCase("")){
			wherepart += " and ContactNo like '%"+request.getParameter("contactNo")+"%'";
		}
		if(request.getParameter("address")!=null && !request.getParameter("address").equalsIgnoreCase("")){
			wherepart += " and Address like '%"+request.getParameter("address")+"%'";
		}
		if(request.getParameter("city")!=null && !request.getParameter("city").equalsIgnoreCase("")){
			wherepart += " and City like '%"+request.getParameter("city")+"%'";
		}
		return wherepart;
	}

	public static UserBean createEntity(HttpServletRequest request) {
		UserBean userbean=new UserBean(); 
		userbean.setFirstName(request.getParameter("fName"));
		userbean.setLastName(request.getParameter("lName"));
		userbean.setUserName(request.getParameter("userName"));
		userbean.setPassword(request.getParameter("password"));
		userbean.setCompany(request.getParameter("company"));
		userbean.setRole(request.getParameter("role"));
		userbean.setEmail(request.getParameter("email"));
		userbean.setContactNo(request.getParameter("contactNo"));
		userbean.setAddress(request.getParameter("address"));
		userbean.setCity(request.getParameter("city"));
		userbean.setPinCode(request.getParameter("pinCode"));
		userbean.setIsEnable(request.getParameter("isEnable"));
		
		return userbean;
	}

	public static void getAllUser(UserBean userbean) {
		String query="insert into UserTable values('"+userbean.getFirstName()+"','"+userbean.getLastName()+"','"+userbean.getUserName()+"','"+userbean.getPassword()+"','"+userbean.getCompany()+"','"+userbean.getRole()+"','"+userbean.getEmail()+"','"+userbean.getContactNo()+"','"+userbean.getAddress()+"','"+userbean.getCity()+"','"+userbean.getPinCode()+"','"+userbean.getIsEnable()+"')";
		System.out.println(query);
		try {
			DbBean.executeInsert(query);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	

	public static void addChangePassword(HttpServletRequest request) {
		String query="update UserTable SET password='"+request.getParameter("newpassword")+"' where UserName='"+request.getParameter("username")+"'";
		try {
			DbBean.executeInsert(query);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static void enableUser(HttpServletRequest request) {
		String query="update UserTable SET IsEnable='Enable' where UserName='"+request.getParameter("username")+"'";
		try {
			DbBean.executeInsert(query);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static void disableUse(HttpServletRequest request) {
		String query="update UserTable SET IsEnable='Disable' where UserName='"+request.getParameter("username")+"'";
		try {
			DbBean.executeInsert(query);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static ResultSet getUserList(HttpServletRequest request) {
	String query="select * from UserTable";
	ResultSet userList=DbBean.executeSelect(query);
		return userList;
	}

	public static ResultSet getUserDetails(HttpServletRequest request) {
		String query = "select convert(varchar(32),DateCreated,103) DateCreated,convert(varchar(32),DateModified,103) DateModified,* from UserTable where UserId = "+request.getParameter("userId")+"";
		System.out.println(query);
		ResultSet rs = DbBean.executeSelect(query);
		return rs;
	}

	public static ResultSet getUserById(String userId) {
		String query = "select convert(varchar(32),DateCreated,103) DateCreated,convert(varchar(32),DateModified,103) DateModified,* from UserTable where UserId = "+userId+"";
		System.out.println(query);
		ResultSet rs = DbBean.executeSelect(query);
		return rs;
	}

	public static void updateUser(HttpServletRequest request) throws Exception {
		String query = "update UserTable set FirstName='"+request.getParameter("firstName")+"',LastName='"+request.getParameter("lastName")+"',UserName='"+request.getParameter("userName")+"',Company='"+request.getParameter("company")+"',Role='"+request.getParameter("role")+"',Email='"+request.getParameter("email")+"',Address='"+request.getParameter("address")+"',City='"+request.getParameter("city")+"',PinCode='"+request.getParameter("pinCode")+"',ContactNo='"+request.getParameter("contactNo")+"',IsEnable='"+request.getParameter("isEnable")+"',DateModified=GETDATE(),IsVerified='"+request.getParameter("isVerified")+"' where UserId="+request.getParameter("userId")+"";
		System.out.println(query);
		DbBean.executeInsert(query);
	}

	public static void deleteUser(String userId) {
		String query="update UserTable SET IsEnable='Disable' where UserId="+userId+"";
		try {
			DbBean.executeInsert(query);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	
}
