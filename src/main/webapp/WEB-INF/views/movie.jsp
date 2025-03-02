<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/sty/movie.css" />
</head>
<body>
    <div class="nav">
        <h2>BOOK</h2>
        <div class="searchcont">
            <input type="text" placeholder="Search...">
            <img src="sear.png">
            <button>Locality</button>
        </div>
        <div class="buttonset">
            <button>Orders</button>
            <button>Logout</button>
        </div>
    </div>

    <div class="movie">
        <div class="image" style="background-image: url('${currentMovie.getPosterUrl()}')" >  
        </div>
        <div class="matter">
            <h4>Trending</h4>
                <h3>${currentMovie.getTitle()}</h3>
                <p>"${currentMovie.description}"</p>
                <p>ratings: ${currentMovie.avgratings}</p>
                <p>Language: ${currentMovie.language}</p>
                <p>Duration:</p>
		
				
	<div class="chooselist">
        <h3>Theaters</h3>
        
        <!-- Iteration start -->
        <c:forEach var="theater" items="${theaters}">
            
            	<table>
            		<tr>
            			<td>${theater.theaterName }</td>
            			<td>${theater.city }</td>
            			<td>${theater.theaterName }</td>
            			<td><button onclick="callApi(${theater.tid },${currentMovie.mid })">Select</button></td>
            		</tr>
            	</table>            
        </c:forEach>
        <!-- Iteration end -->
    </div>


        </div>
    </div>
    
    
    <div class="theaterlist">
        <h3>ShowTimes:</h3>
        <div class="heading">
        		<p>index</p>
                <p>Theater</p>
                <p>City</p>
                <p>address</p> 
                <p>start time</p>
                <p>end time</p>
                <p>Seats left</p>
                <p>click to book</p>
        </div>
		<hr>
        <div class="theatercont" >     
        <div class="slide" id="stcontainer" >
            <div class="data">
            	<p>index</p>
                <p>Theater</p>
                <p>Date</p>
                <p>start Time</p> 
                <p>Status</p>
                <p>start time</p>
                <p>Seats left</p>
                <button onclick="booktheater(event)" >Book Now</button>
            </div>
            </div>
        </div>
    </div>
    
    
    
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/movie.js"></script>
</html>