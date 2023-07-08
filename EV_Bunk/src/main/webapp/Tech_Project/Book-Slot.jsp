
<%@page import="java.io.PrintWriter"%>
<%@page import="javax.swing.text.html.HTML"%>
<%@page import="java.sql.Date"%>
<%@page import="com.nitin.dao.EvDaoDef"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
 

<%
	String Bname = request.getParameter("Bname");
	int slot = Integer.parseInt(request.getParameter("Sno"));
	String user = request.getParameter("Cname");
	String Vno = request.getParameter("Vno");
	String date = request.getParameter("date");
	String s1 = request.getParameter("time");
	String s2 = String.valueOf(s1.charAt(0))+String.valueOf(s1.charAt(1));
	int time = Integer.parseInt(s2);
	
	
	EvDaoDef dao = new EvDaoDef();
	boolean check =  dao.bookSlot(Bname, date, slot, time);
	dao.insertBookings(Bname+"_Bookings", user, Vno, slot, time, date);
	response.setContentType("text/html");
    
    PrintWriter rite = response.getWriter();
    if(check){
    	rite.print("<script>alert('Slot Booked Successfully');window.location = 'WEBSITE.html';</script>");	
    	
	}else{
		rite.print("<script>alert('Slot is already booked');window.location = 'WEBSITE.html';</script>");	
    	
	}
	
	
	
	
	
%>




