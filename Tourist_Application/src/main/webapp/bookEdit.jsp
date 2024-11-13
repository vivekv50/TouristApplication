<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ include file="nav.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<main>
		<h1>Booking details</h1>
		<form action="admin.jsp">
			<button id="ad">Admin</button>
		</form>	
	</main>
<section>
		<%
			String id=request.getParameter("id");
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:33066","root","root");
				PreparedStatement ps=con.prepareStatement("select * from demo_jsp.form_table where id=?");
				ps.setString(1,id);
				ResultSet rs=ps.executeQuery();
				if(rs.next()){
					ResultSet r=ps.executeQuery();
					while(r.next()){
							%>
								<form action="update.jsp">
									<h1>Update user details</h1>
									<hr>
									<label>ID: </label>
									<input type="text"value="<%=r.getString(1) %>" disabled="disabled">
									<input type="hidden" name="id" value="<%=r.getString(1) %>"><br>
									<label>First name: </label>
									<input type="text" name="fname" value="<%=r.getString(2) %>"><br>
									<label>Last name: </label>
									<input type="text" name="lname" value="<%=r.getString(3) %>"><br>
									<label>email: </label>
									<input type="email" name="email" value="<%=r.getString(4) %>"><br>
									<label>Password: </label>
									<input type="text" name="pass" value="<%=r.getString(5) %>"><br>
									<br>
									<button>Update</button>
								</form>
							<% 
					}
				}else{
					out.print("<h2>Something went wrong try again....</h2>");

				}
				
			}catch(ClassNotFoundException | SQLException e){
				
			}	
		%>
	</section>
</body>
</html>