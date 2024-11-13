<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ include file="nav.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
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
        text-align: center;
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 10px 2rem;
    }

    h1 {
        margin: 0;
    }

    section {
        width: 50%;
        margin: auto;
        display: flex;
        justify-content: space-around;
        align-items: center;
        margin-top: 6rem;
    }

    button {
        color: white;
        background-color: #478434;
        font-size: 1rem;
        border: none;
        padding: 10px;
        border: 1px solid grey;
        border-radius: 5px;
    }
</style>
</head>
<body>
	<main>
		<h1>Welcome admin</h1>
		<form action="log.jsp">
			<button>Log out</button>
		</form>
	</main>
	<section>
		<form action="adminBook.jsp">
			<button>Booking details</button>
		</form>
		<form action="adminMess.jsp">
			<button>Message details</button>
		</form>
		<form action="adminUser.jsp">
			<button>User details</button>
		</form>
		<form action="adminLoc.jsp">
			<button>Location details</button>
		</form>
	</section>
</body>
</html>