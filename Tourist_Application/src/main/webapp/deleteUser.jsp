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
	margin-top:2px;
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
</body>
</html>