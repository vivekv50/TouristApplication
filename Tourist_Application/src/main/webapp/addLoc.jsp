<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
    <%@ include file="nav.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
button{
	color:white;
	background-color: #478434;
	font-size:1rem;
	border: none;
	padding:10px;
	border: 1px solid grey;
	border-radius: 5px;
}
main{
	margin-top:2px;
	background-color: #464646;
	color:white;
	text-align: center;
	display:flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px 2rem;
	margin-bottom: 1rem;
}
h1{
	margin:0;
}
section{
	padding-left: 2rem;
}
</style>
</head>
<body>
	<main>
		<h1>Adding location details</h1>
		<form action="admin.jsp">
			<button>Admin</button>
		</form>	
	</main>
	<section>
	<%
	String Id=request.getParameter("id");
	String destination=request.getParameter("destination");
	String accommodation=request.getParameter("accommodation");
	String transportation=request.getParameter("transportation");
	String loc_atr=request.getParameter("loc_atr");
	String activity=request.getParameter("activity");
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:33066?user=root&password=root");
		PreparedStatement ps=con.prepareStatement("insert into demo_jsp.loc_table values(?,?,?,?,?,?)");
		ps.setString(1,Id);
		ps.setString(2,destination);
		ps.setString(3,accommodation);
		ps.setString(4,transportation);
		ps.setString(5,loc_atr);
		ps.setString(6,activity);
		int res=ps.executeUpdate();
		if(res>0){
			out.print("<h1>Added successfully</h1>");
			out.print("<a href='adminLoc.jsp'><button>Admin location</button></a>");
		}else{
			out.print("<h1>Something went wrong try again.../</h1>");
			out.print("<a href='adminLoc.jsp'><button>Admin location</button></a>");
		}
	}catch(ClassNotFoundException | SQLException e){
		out.print("<h1>Something went wrong try again.../</h1>");
		out.print("<a href='adminLoc.jsp'><button>Admin location</button></a>");
	}	
	%>
	</section>
</body>
</html>