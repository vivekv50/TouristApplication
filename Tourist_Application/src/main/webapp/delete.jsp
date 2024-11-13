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
button{
	color:white;
	background-color: #478434;
	font-size:1rem;
	border: none;
	padding:10px;
	border: 1px solid grey;
	border-radius: 5px;
}
section{
	padding-left: 2rem;
}
</style>
</head>
<body>
	<main>
		<h1>Delete</h1>
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
				PreparedStatement ps=con.prepareStatement("delete from demo_jsp.form_table where id=?");
				ps.setString(1,id);
				int res=ps.executeUpdate();
				
				if(res>0){
					out.print("<h2>Deleted successfully</h2>");
					out.print("<a href='adminUser.jsp'><button>Admin User</button></a>");
				}else{
					out.print("<h2>Something went wrong try again.</h2>");
				}

			}catch(ClassNotFoundException | SQLException e){
				e.printStackTrace();
			}
		%>	
	</section>
</body>
</html>