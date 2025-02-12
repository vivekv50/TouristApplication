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

    main {
        background-color: #464646;
        color: white;
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 10px 2rem;
    }

    h1 {
        margin: 20px;
    }

    #ad {
        color: white;
        background-color: #478434;
        font-size: 1rem;
        border: none;
        padding: 10px;
        border: 1px solid grey;
        border-radius: 5px;
    }

    section {
        padding-left: 2rem;
        padding-right: 2rem;
    }

    table {
        width: 100%;
        border: 1px solid black;
        border-collapse: collapse;
        margin-top: 20px;
    }

    th,
    tr,
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
		<h1>Admin user details</h1>
		<form action="admin.jsp">
			<button id="ad">Admin</button>
		</form>	
	</main>
	<section>
		<h1>User details</h1>
		<hr>
		<%
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:33066","root","root");
				PreparedStatement ps=con.prepareStatement("select * from demo_jsp.form_table");
				ResultSet rs=ps.executeQuery();
				out.print("<table>");
				out.print("<tr>");
				out.print("<th>ID</th>");
				out.print("<th>First name</th>");
				out.print("<th>Last name</th>");
				out.print("<th>Email</th>");
				out.print("<th>Password</th>");
				out.print("<th>Update</th>");
				out.print("<th>Delete</th>");
				out.print("</tr>");
				if(rs.next()){
					ResultSet r=ps.executeQuery();
					while(r.next()){
						out.print("<tr>");
						out.print("<td>"+r.getString(1)+"</td>");
						out.print("<td>"+r.getString(2)+"</td>");
						out.print("<td>"+r.getString(3)+"</td>");
						out.print("<td>"+r.getString(4)+"</td>");
						out.print("<td>"+r.getString(5)+"</td>");
						out.print("<td><a href='edit.jsp?id="+r.getString(1)+"'><button id='edit'>Edit</button></a></td>");
						out.print("<td><a href='delete.jsp?id="+r.getString(1)+"'><button id='delete'>Delete</button></a></td>");
						out.print("</tr>");
					}
				}else{
					out.print("<h1>Something went wrong try again.../</h1>");
					out.print("<a href='log.jsp'><button>LogIn</button></a>");
				}
				out.print("</table>");
			}catch(ClassNotFoundException | SQLException e){
				
			}
		
		%>
	</section>
	<hr>
	
</body>
</html>