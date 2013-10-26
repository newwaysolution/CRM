<%@ page import="com.beans.UserBean" %>
<%
	
	HttpSession session1=request.getSession(false);
	//UserBean userBean=(UserBean)session.getAttribute("userBean");
	if(session.getAttribute("userBean")== null){
		String url="http://localhost:8080/Project_CRM_Final/AdminLogin.jsp";
		response.setStatus(response.SC_MOVED_TEMPORARILY);
		response.setHeader("Location", url);
	}

%>