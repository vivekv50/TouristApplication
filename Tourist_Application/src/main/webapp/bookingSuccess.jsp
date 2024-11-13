<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="main.jsp"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        margin: 0;
        padding: 0;
    }
	#logout{
	background-color: #464646;
	padding: 1.5rem;
	margin-bottom: 2rem;
	}
    .container {
        margin-top: 20px;
        padding: 20px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h2 {
        color: #333;
    }

    p {
        color: #666;
    }

    a {
        color: #007bff;
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }

    .container {
        max-width: 600px;
        margin: auto;
    }
</style>
</head>
<body>
<section id="logout"> 
</section>
<section class="container">
    <%
    String fname = request.getParameter("firstName");
    String lname=request.getParameter("lastName");
    String dob = request.getParameter("dob");
    String gender=request.getParameter("gender");
    String mobile = request.getParameter("mobile");
    String email=request.getParameter("email");
    String address=request.getParameter("address");
    String source=request.getParameter("source");
    String destination=request.getParameter("destination");
    String transport=request.getParameter("transportationType");
    String accomodation=request.getParameter("accommodationType");
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:33066", "root", "root");
        PreparedStatement pstmt = con.prepareStatement("INSERT INTO demo_jsp.book_table VALUES (?,?,?,?,?,?,?,?,?,?,?)");
        pstmt.setString(1, fname);
        pstmt.setString(2, lname);
        pstmt.setString(3,dob);
        pstmt.setString(4, gender);
        pstmt.setString(5, mobile);
        pstmt.setString(6,email);
        pstmt.setString(7,address);
        pstmt.setString(8,source);
        pstmt.setString(9,destination);
        pstmt.setString(10, transport);
        pstmt.setString(11, accomodation);
        int res=pstmt.executeUpdate();
        if(res>0){
            out.print("<div>");
            out.print("<h2>Your Journey Booking is Successful!</h2>");
            out.print("<p>Thank you for choosing our services.</p>");
            out.print("<a href='Home.jsp'>Go Back to Home</a>");
            out.print("</div>");

        }else{
            out.print("<div>");
            out.print("<h2>Try again !</h2>");
            out.print("<a href='booking.jsp'>Go Back to Home</a>");
            out.print("</div>");
        }
    }catch(ClassNotFoundException | SQLException e){
        e.printStackTrace();
        out.print("<div>");
        out.print("<h2>Try again !</h2>");
        out.print("<a href='booking.jsp'>Go Back to Home</a>");
        out.print("</div>");
    }
    %>
</section>
</body>
</html>
