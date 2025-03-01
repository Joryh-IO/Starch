<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <h4>Treding</h4>
                <h3>${currentMovie.getTitle()}</h3>
                <p>"${currentMovie.description}"</p>
                <p>ratings: ${currentMovie.avgratings}</p>
                <p>Language: ${currentMovie.language}</p>
                <p>Duration:</p>

        </div>
    </div>


    
    <div class="theaterlist">
        <h3>ShowTimes:</h3>
        
        <!-- Iteration start -->
        <div class="slide">
            <div class="data">
                <p>Theater</p>
                <p>Date</p>
                <p>start Time</p> 
                <p>Status</p>
                <button>Book Now</button>
            </div>
            <!-- Iteration end -->
            
        </div>
    </div>
    
    
    
    
</body>
</html>