<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/sty/booking.css" />

</head>
<body>
    <div class="nav">
        <h2>BOOK</h2>
        <div class="searchcont">
            <input type="text" placeholder="Search...">
            <button>Locality</button>
        </div>
        <div class="buttonset">
            <button onclick="creategrid" >Profile</button>
            <button>Logout</button>
        </div>
    </div>
    <div class="mega">
        <div class="container">
        
            <div class="seats"></div>
            
        </div>
        <div class="rightpanel">
            <div class="top">
                <h3 id="${showtime.stid }" >Summary:</h3>
                <table>
                    <tr>
                        <td><p>No. of seats booked:</p></td>
                        <td id="p">0</td>
                    </tr>
                    <tr>
                        <td><p>Seat names:</p></td>
                        <td id="p"></td>
                    </tr>
                    <tr>
                        <td><p>Theater name:</p></td>
                        <td id="p">${theater.theaterName }</td>
                    </tr>
                    <tr>
                        <td><p>Location:</p></td>
                        <td id="p">${theater.city}, ${theater.address}</td>
                    </tr>
                    <tr>
                        <td><p class="imp">Timings:</p></td>
                        <td><p id="pe" >${showtime.starttime }</td>
                    </tr>
                </table>
                <hr>
                <p>Movie info:</p>
                <p id="opacity">${movie.title} <br> "${movie.description}" <br> 
                Genre: ${movie.genre} | Duration:  | Language: ${movie.language } | Avg.ratings: ${movie.avgratings} </p>
                <hr>
                <table>
                    <tr>
                        <td><p>Cost:</p></td>
                        <td id="p"></td>
                    </tr>
                    <tr>
                        <td><p>GST:</p></td>
                        <td id="p"></td>
                    </tr>
                    <tr>
                        <td><p class="imp">Gross Total:</p></td>
                        <td id="pe">0</td>
                    </tr>
                </table>
                <button id="proceedButton" >Procced to payment!</button>
            </div>
            <div class="bottom">
                <p>terms and conditions</p>
                <p id="opacity">"Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                    Ut enim ad minim veniam,dolor sit amet, consectetur adipiscing elit, 
                    sed do eiusmod tempor "</p>
            </div>
        </div>
    </div>
    <script src="${pageContext.request.contextPath}/scripts/booking.js"></script>
</body>
</html>