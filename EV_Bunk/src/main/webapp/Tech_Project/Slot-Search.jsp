<%@page import="com.nitin.entity.Bunk"%>
<%@page import="com.nitin.dao.EvDaoDef"%>
<%@page import="java.util.List"%>
<%
String State = request.getParameter("state");
String City = request.getParameter("city");
String area = request.getParameter("area");
EvDaoDef dao = new EvDaoDef();
List<Bunk> ls = dao.selectAll(State, City, area);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css" href="css/temp.css">
<title></title>

</head>
<body>

	<header>

		<div id="menu-bar" class="fas fa-bars"></div>

		<a href="#" class="logo"><span>EV</span>Bunk</a>

		<nav class="navbar">
			<a href="WEBSITE.html">home</a>

		</nav>

		<div class="icons">
			<i class="fas fa-search" id="search-btn"></i> <i class="fas fa-user"
				id="login-btn"></i>
		</div>

		<form action="" class="search-bar-container">
			<input type="search" id="search-bar" placeholder="search here...">
			<label for="search-bar" class="fas fa-search"></label>
		</form>

	</header>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>



	<section class="book" id="book">


		<h1 class="heading">
			<span>b</span> <span>o</span> <span>o</span> <span>k</span> <span
				class="space"></span> <span>n</span> <span>o</span> <span>w</span>
		</h1>


		<div class="row">

			<div class="image">
				<img src="images/book-img.svg" alt="">
			</div>

			<form action="Book-Slot.jsp" method="get">
				<div class="inputBox">
					<h3>Bunk Name</h3>
					<input type="text" id="here" placeholder="Enter the bunk name"
						name="Bname">
				</div>
				<div class="inputBox">
					<h3>Slot Number</h3>
					<input type="text" placeholder="Enter slot number" name="Sno">
				</div>
				<div class="inputBox">
					<h3>Customer name</h3>
					<input type="text" placeholder="Enter your name" name="Cname">
				</div>
				<div class="inputBox">
					<h3>Vehicle Number</h3>
					<input type="text" placeholder="Enter your vehicle number"
						name="Vno">
				</div>
				<div class="inputBox">
					<h3>Reservation Date</h3>
					<input type="date" name="date">
				</div>
				<div class="inputBox">
					<h3>Time</h3>
					<select name="time">
						<option id="op">07Am-09Am</option>
						<option id="op">09Am-11Am</option>
						<option id="op">11Am-01Pm</option>
						<option id="op">01Pm-03Pm</option>
						<option id="op">03Pm-05Pm</option>
						<option id="op">05Pm-07Pm</option>
						<option id="op">07Pm-09Pm</option>
					</select>
				</div>

				<input type="submit" class="btn" value="book now">
			</form>

		</div>

		<table>
			<tr>
				<th>Bunk Name</th>
				<th>Address</th>
				<th>No Of Slots</th>

			</tr>
			<tbody>
				<%
				for (Bunk c : ls) {
				%>
				<tr>
					<td id="bunkname"><%=c.getUser_name()%></td>
					<td><%=c.getBunk_address()%></td>
					<td><%=c.getNo_ofSlots()%></td>

				</tr>
				<%
				}
				%>
			</tbody>

		</table>


	</section>
	<style>
table {
	font-size: 18px;
	position: absolute;
	top: 240px;
	left: 30px;
	border-collapse: collapse;
	width: 45%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}

tr:hover {
	box-shadow: 0px 9px 4px -6px grey;
}

tr:hover td {
	cursor: pointer;
	color: red;
	border-top: 1px solid grey;
	border-bottom: 1px solid grey;
}

/* tr:first-child:hover td {
  border-top: none;
}
tr:last-child:hover td {
  border-bottom: none;
} */
tr:hover td.highlight div {
	transform: scaleX(3);
}
</style>

</body>
</html>