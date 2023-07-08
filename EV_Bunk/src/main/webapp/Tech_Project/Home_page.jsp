<%@page import="com.mysql.cj.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.nitin.dao.EvDaoDef"%>
<%@page import="java.util.Random"%>
<jsp:useBean id="bunk" class="com.nitin.entity.Bunk" ></jsp:useBean>
<%

	String name=(String)session.getAttribute("name"); 
	String address = (String)session.getAttribute("address");
	String area = (String)session.getAttribute("area");
	String state = (String)session.getAttribute("state");
	String city = (String)session.getAttribute("city");
	int slot = (Integer)session.getAttribute("slot");
	String username = (String)session.getAttribute("username");

%>    
<!DOCTYPE html>
<html  >
<head>
  <!-- Site made with Mobirise Website Builder v5.6.11, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v5.6.11, mobirise.com">
  <meta name="twitter:card" content="summary_large_image"/>
  <meta name="twitter:image:src" content="">
  <meta property="og:image" content="">
  <meta name="twitter:title" content="Home">
  <style>
   body{
    background-color: #A9C9FF;
    background-image: linear-gradient(180deg, #A9C9FF 0%, #FFBBEC 100%);

    }
    section{
       background-color: #A9C9FF;
        background-image: linear-gradient(180deg, #A9C9FF 0%, #FFBBEC 100%);
    }
    #box{
        height: 500px;
        width: 50%;
        
        
        text-align: center;
        position: relative;
        left: 25%;
        box-shadow: inset 0 0 0 3000px rgba(150, 150, 150, 0.192);
        /*filter: blur(1px);*/
        border-radius: 15px;
    }
    #im{
        position: absolute;
        left: 43%;
        height: 80px;
        width: 80px;
    }
    table{
        position: inherit;
        top: 300px;
    }
    .lab{
        position: absolute;
        left: 160px;
        font-size: 25px;
    }
    .co{
        position: absolute;
        left: 360px;
        font-size: 25px;
    }
   </style> 
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="assets/images/logo-1-96x63.png" type="image/x-icon">
  <meta name="description" content="">
  
  
  <title>Home</title>
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/socicon/css/styles.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="preload" href="https://fonts.googleapis.com/css?family=Jost:100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i&display=swap" as="style" onload="this.onload=null;this.rel='stylesheet'">
  <noscript><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Jost:100,200,300,400,500,600,700,800,900,100i,200i,300i,400i,500i,600i,700i,800i,900i&display=swap"></noscript>
  <link rel="preload" as="style" href="assets/mobirise/css/mbr-additional.css"><link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
  
</head>
<body>
  
  <section data-bs-version="5.1" class="menu menu2 cid-tc1W5QKy7U" once="menu" id="menu2-2">
    
    <nav class="navbar navbar-dropdown navbar-fixed-top navbar-expand-lg">
        <div class="container">
            <div class="navbar-brand">
                
                <span class="navbar-caption-wrap"><a class="navbar-caption text-white display-5" href="https://mobiri.se">Ev Bunk</a></span>
            </div>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-bs-toggle="collapse" data-target="#navbarSupportedContent" data-bs-target="#navbarSupportedContent" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <div class="hamburger">
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav nav-dropdown nav-right" data-app-modern-menu="true"><li class="nav-item"><a class="nav-link link text-white display-7" href="WEBSITE.html">Home</a></li>
                    <li class="nav-item"><a class="nav-link link text-white display-7" href="Show-Bookings.jsp">Bookings</a></li>
                    <li class="nav-item"><a class="nav-link link text-white display-7" href="https://mobiri.se">Log-out</a>
                    </li></ul>
                
                
            </div>
        </div>
    </nav>
</section><section class="display-7" style="padding: 0;align-items: center;justify-content: center;flex-wrap: wrap;    align-content: center;display: flex;position: relative;height: 4rem;"><a href="https://mobiri.se/2817471" style="flex: 1 1;height: 4rem;position: absolute;width: 100%;z-index: 1;"><img alt="" style="height: 4rem;" src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw=="></a><p style="margin: 0;text-align: center;" class="display-7"> &#8204;</p><a style="z-index:1" href="https://mobirise.com/website-maker.html"></a></section><script src="assets/bootstrap/js/bootstrap.bundle.min.js"></script>  <script src="assets/smoothscroll/smooth-scroll.js"></script>  <script src="assets/ytplayer/index.js"></script>  <script src="assets/dropdown/js/navbar-dropdown.js"></script>  <script src="assets/theme/js/script.js"></script>  
  
  <div id="box">
        <img id="im" src="1.png"><br><br><br><br>
        <div style="font-weight: bold; font-size: 30px;"><%=name %></div><hr><br>
        <label class="lab">Address</label><label class="co">: <%=address %></label><br><br>
        <label class="lab">Area/Landmark</label><label class="co">: <%=area %></label><br><br>
        <label class="lab">State</label><label class="co">: <%=state %></label><br><br>
        <label class="lab">City</label><label class="co">: <%=city %></label><br><br>
        <label class="lab">No. of Slots</label><label class="co">: <%=slot %></label><br><br>
        <label class="lab">Username</label><label class="co">: <%=username %></label><br><br>
  </div>
</body>
</html>