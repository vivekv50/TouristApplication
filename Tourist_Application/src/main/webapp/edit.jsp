<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ include file="nav.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
form{
	width: 30%;
	text-align: center;
	gap:10px;
}
main{
	margin-top:2px;
	background-color: #464646;
	color:white;
	display:flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px 2rem;
}
h1{
	margin:0;
}
main>form{
	width: 100%;
	text-align: right;
}
button{
	color:white;
	background-color: #478434;
	font-size:1rem;
	border: none;
	padding:10px;
	border: 1px solid grey;
	border-radius: 5px;
}
</style>
</head>
<body>
	<main>
		<h1>Update</h1>
		<form action="admin.jsp">
			<button>Admin</button>
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