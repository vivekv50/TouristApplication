<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="main.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style type="text/css">
body{
	background-image: url("images/6345959.jpg");
	background-repeat: no-repeat;
	background-size: 100%;
}
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
main{
	width: 50%;
	margin:auto;
	text-align: center;
	margin-top: 10rem;
}
main>form>h1{
	font-size: 2.5rem;
}
main>form>p{
	font-size: 1.5rem;
}
main>form>div{
	width:60%;
	margin: auto;
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-top: 3rem;
}
main>form>div>button{
	margin:auto;
	width: 40%;
	color:white;
	background-color: blue;
	font-size:1.3rem;
	border: none;
	padding:10px;
	border-radius: 5px;
	
}
</style>
<script src="https://kit.fontawesome.com/5fdba399ea.js" crossorigin="anonymous"></script>
</head>
<body>
	<section id="logout"> 
		<form action="user.jsp">
			<button>User <i class="fa-solid fa-user"></i></button>
		</form>
		<form action="index.jsp">
			<button>Log out  <i class="fa-solid fa-arrow-up-from-bracket"></i></button>
		</form>
	</section>
	<main>
		<form action="accommodation.jsp">
			<h1>Welcome to Tourist Web Application</h1>
        	<p>Explore our Website to find accommodation options, transportation services, and more for your next travel adventure!</p>
        	<div>
			<button>Search <i class="fa-solid fa-magnifying-glass"></i></button>
			</div>
		</form>
	</main>
</body>
</html>