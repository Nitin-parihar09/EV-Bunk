<%@page import="com.nitin.dao.EvDaoDef"%>
<%@page import="java.util.Random"%>
<jsp:useBean id="bunk" class="com.nitin.entity.Bunk" ></jsp:useBean>

<jsp:setProperty property="*" name="bunk"/>

<%!
	int id;
	int Id(){
		Random r = new Random();
		id = r.nextInt(9999999);
		return id;
	}
%>

<%
	String p1 = request.getParameter("name");
	String p2 = request.getParameter("address");
	String p3 = request.getParameter("areas");
	String p4 = request.getParameter("state");
	String p5 = request.getParameter("city");
	String p6 = request.getParameter("slots");
	int slots = Integer.parseInt(p6);
	String p7 = request.getParameter("username");
	String p8 = request.getParameter("password");
	
	bunk.setId(Id());
	bunk.setBunk_name(p1);
	bunk.setBunk_address(p2);
	bunk.setNearby_area(p3);
	bunk.setState(p4);
	bunk.setCity(p5);
	bunk.setNo_ofSlots(slots);
	bunk.setUser_name(p7);
	bunk.setPassword(p8);
	
	EvDaoDef evdao = new EvDaoDef();
	evdao.addAdmin(bunk);
	String t_name = p7;
	String Bt_name = p7+"_Bookings";
	evdao.createSlots(t_name, 4);
	evdao.createBookings(Bt_name);
	response.sendRedirect("Registration-Form.jsp");
	 
%>
<%=bunk.getBunk_name()  %>