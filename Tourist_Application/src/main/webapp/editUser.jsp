<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="main.jsp" %>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#logout{
	background-color: #464646;
	padding: 0.2rem 2rem;
	display: flex;
	justify-content: space-between;
	align-items: center;
}
#logout>form {
	margin: 0.5rem 0rem;
}
#logout>form>button{
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
	<section id="logout"> 
		<div></div>
		<form action="index.jsp">
			<button>Log out  <i class="fa-solid fa-arrow-up-from-bracket"></i></button>
		</form>
	</section>
	
	<section>
		<%
		String Id=request.getParameter("id");
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:33066?user=root&password=root");
		PreparedStatement ps=con.prepareStatement("select * from demo_jsp.form_table where id=?");
		ps.setString(1,Id);
		ResultSet rs=ps.executeQuery();
		
		if(rs.next()){
			ResultSet r=ps.executeQuery();
			while(r.next()){
				%>
		<form action="editUpdatedetails.jsp" method="post">
        <h1>Update details</h1>
        <hr>
        <input type="text" placeholder="ID" value="<%=r.getString(1) %>"> <br>
        <input type="hidden" name="id" placeholder="ID" value="<%=r.getString(1) %>"> <br>
        <input type="text" name="fname" placeholder="First name" value="<%=r.getString(2) %>"> <br>
        <input type="text"  name="lname" placeholder="Last name" value="<%=r.getString(3) %>"> <br>
        <input type="email"  name="email" placeholder="E-mail" value="<%=r.getString(4) %>"> <br>
        <input type="password" name="pass" placeholder="Password" value="<%=r.getString(5) %>"> <br><br>
        <button>update</button>
    </form>
				<%
			}
		}else{
			out.print("<div>");
			out.print("<h1>Something went wrong try again.../</h1>");
			out.print("<a href='user.jsp'><button>Register</button></a>");
			out.print("</div>");
		}
	}catch(ClassNotFoundException | SQLException e){
		out.print("<div>");
		out.print("<h1>Something went wrong try again.../</h1>");
		out.print("<a href='user.jsp'><button>Register</button></a>");
		out.print("</div>");
	}	
	%>
	</section>
</body>
</html>