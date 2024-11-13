<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="indexMain.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/5fdba399ea.js" crossorigin="anonymous"></script>
<style type="text/css">
	    .container {
        width: 80%;
        margin: auto;
        padding-top: 20px;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-around;
    }
    #logout{
	background-color: #464646;
	padding: 1.5rem;
	}
    .transport {
        background: #fff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        padding: 10px;
        margin-bottom: 20px;
        width: 30%;
        min-width: 250px;
        flex-basis: 30%;
        text-align: center;
    }
    .transport h2 {
        color: #333;
        margin-top: 0;
    }
    .transport p {
        color: #666;
    }
    .transport img {
        width: 100%;
        border-radius: 5px;
        margin-bottom: 10px;
    }
    #airbus {
        width: 100%;
    }
    .button-container {
        text-align: center;
        margin-top: 20px;
    }
    .button {
        background-color: #ff9900; 
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        margin-bottom: 5rem;
    }
    .button:hover {
        background-color: #cc7a00; 
    }
</style>
</head>
<body>
	<section id="logout"> 
	</section>
	<div class="container">
        <div class="transport">
            <img src="images/hotel.jpg" alt="Ship" id="ship">
            <h2>Hotel</h2>
            <p>Stay in luxury hotels with comfortable rooms and top-notch amenities..</p>
        </div>
        <div class="transport">
            <img src="images/apartment.webp" alt="Airbus" id="airbus">
            <h2>Apartment</h2>
            <p>Experience the convenience of staying in fully-furnished apartments with kitchen facilities.</p>
        </div>
        <div class="transport">
            <img src="images/villa.webp" alt="Plane">
            <h2>Villa</h2>
            <p>Rent a private villa for an exclusive and secluded retreat.</p>
        </div>
        <div class="transport">
            <img src="images/hostel.jpg" alt="Private Jet">
            <h2>Hostel</h2>
            <p>Travel on a budget by staying in comfortable dormitories and shared facilities.</p>
        </div>
        <div class="transport">
            <img src="images/speacial.jpg" alt="Cargo Ship">
            <h2>Special Accommodation</h2>
            <p>Contact Personally for travel by Special Way.</p>
        </div>
    </div>
    <div class="button-container">
       <a href="log.jsp"> <button class="button">Let's Begin Journey</button></a>
    </div>
</body>
</html>