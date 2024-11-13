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
</style>
</head>
<body>
	<main>
		<h1>Message</h1>
		<form action="admin.jsp">
			<button id="ad">Admin</button>
		</form>	
	</main>
	<section>
		<%
		boolean flag=false;
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:33066","root","root");
			PreparedStatement ps=con.prepareStatement("select * from demo_jsp.message_table");
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				out.print("<table>");
				out.print("<tr>");
				out.print("<th>Name</th>");
				out.print("<th>Email</th>");
				out.print("<th>Message</th>");
				out.print("</tr>");
				ResultSet r=ps.executeQuery();
				while(r.next()){
					out.print("<tr>");
					out.print("<td>"+r.getString(1)+"</td>");
					out.print("<td>"+r.getString(2)+"</td>");
					out.print("<td>"+r.getString(3)+"</td>");
					out.print("</tr>");
				}
				out.print("</table>");
				flag=true;
			}else{
				out.print("<table>");
				out.print("<tr>");
				out.print("<th>Name</th>");
				out.print("<th>Email</th>");
				out.print("<th></th>");
				out.print("</tr>");
				out.print("</table>");
			}		
		}catch(ClassNotFoundException | SQLException e){
			out.print("<table>");
			out.print("<tr>");
			out.print("<th>Name</th>");
			out.print("<th>Email</th>");
			out.print("<th></th>");
			out.print("</tr>");
			out.print("</table>");
		}
		%>
	</section>
	
</body>
</html>