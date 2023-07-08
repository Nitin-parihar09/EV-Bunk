<%@page import="javax.swing.text.html.HTML"%>
<%@page import="com.nitin.dao.EvDaoDef"%>
<%@page import="java.util.Random"%>
<jsp:useBean id="bunk" class="com.nitin.entity.Bunk" ></jsp:useBean>

<%!
	
	boolean check(String user, String user_name, String password, String p1){
		if(user_name.equals(user) && password.equals(p1)){
			return true;
		}
		return false;
	}
%>


<%
	String user = request.getParameter("user");
	String p1 = request.getParameter("pass");

	EvDaoDef dao = new EvDaoDef();
	bunk = dao.select(user);
	
	String name = bunk.getBunk_name();
	String address = bunk.getBunk_address();
	String area = bunk.getNearby_area();
	String state = bunk.getState();
	String city = bunk.getCity();
	int slot = bunk.getNo_ofSlots();
	String username = bunk.getUser_name();
	
	session.setAttribute("name", name);
	session.setAttribute("address", address);
	session.setAttribute("area", area);
	session.setAttribute("state", state);
	session.setAttribute("city", city);
	session.setAttribute("slot", slot);
	session.setAttribute("username", username);
	
	String user_name = bunk.getUser_name();
	String password = bunk.getPassword();
	
	if(check(user,user_name,password,p1)){response.sendRedirect("Home_page.jsp");}
	
%>
