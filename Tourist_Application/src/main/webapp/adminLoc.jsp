<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ include file="nav.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
    }

    .ad {
        color: white;
        background-color: #478434;
        font-size: 1rem;
        border: none;
        padding: 10px;
        border: 1px solid grey;
        border-radius: 5px;
    }

    main {
        background-color: #464646;
        color: white;
        text-align: center;
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 10px 2rem;
    }

    h1 {
        margin: 0;
    }

    #fadd {
        width: 20%;
        margin-left: 2rem;
    }

    table {
        width: 95%;
        border: 1px solid black;
        border-collapse: collapse;
        margin-top: 20px;
        margin-left: 2rem;
        margin-right: 2rem;
    }

    th,
    td {
        border: 1px solid black;
        padding: 8px;
        text-align: left;
    }
    td{
    	background-color:white;
    }

    #edit,
    #delete {
        border: none;
        height: 1.5rem;
        width: 100%;
        color: white;
        font-size: 0.8rem;
        cursor: pointer;
    }

    #edit {
        background-color: green;
    }

    #delete {
        background-color: red;
    }
</style>
</head>
<body>
	<main>
		<h1>Admin location details</h1>
		<form action="admin.jsp">
			<button class="ad">Admin</button>
		</form>	
	</main>
	<section>
		<%
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:33066","root","root");
			PreparedStatement ps=con.prepareStatement("select * from demo_jsp.loc_table");
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				out.print("<table>");
				out.print("<tr>");
				out.print("<th>ID</th>");
				out.print("<th>Destination</th>");
				out.print("<th>Accommodation</th>");
				out.print("<th>Transportation</th>");
				out.print("<th>Location Attractions</th>");
				out.print("<th>Activity</th>");
				out.print("<th>Update</th>");
				out.print("<th>Delete</th>");
				out.print("</tr>");
				ResultSet r=ps.executeQuery();
				while(r.next()){
					out.print("<tr>");
					out.print("<td>"+r.getString(1)+"</td>");
					out.print("<td>"+r.getString(2)+"</td>");
					out.print("<td>"+r.getString(3)+"</td>");
					out.print("<td>"+r.getString(4)+"</td>");
					out.print("<td>"+r.getString(5)+"</td>");
					out.print("<td>"+r.getString(6)+"</td>");
					out.print("<td><a href='locEdit.jsp?id="+r.getString(1)+"'><button id='edit'>Edit</button></a></td>");
					out.print("<td><a href='locDelete.jsp?id="+r.getString(1)+"'><button id='delete'>Delete</button></a></td>");
					out.print("</tr>");
				}
				out.print("</table>");
			}else{
				out.print("<h1>Something went wrong try again.../</h1>");
				out.print("<a href='log.jsp'><button class='ad'>LogIn</button></a><br>");
			}		
		}catch(ClassNotFoundException | SQLException e){
			
		}
		%>
		
	</section>
	<hr>
	<form id="fadd" action="addLoc.jsp" method="post">
		<h2>Add destination details</h2>
		<hr>
		<label>ID:</label><br>
		<input type="text" name="id" ><br>
		<label>Destination:</label><br>
		<input type="text" name="destination" ><br>
		<label>Accommodation:</label><br>
		<input type="text" name="accommodation" ><br>
		<label>Transportation:</label><br>
		<input type="text" name="transportation" ><br>
		<label>Location attractions:</label><br>
		<input type="text" name="loc_atr" ><br>
		<label>Activity:</label><br>
		<input type="text" name="activity" ><br>
		<br>
		<button class="ad">Add</button>
	</form>
	<hr>
</body>
</html>