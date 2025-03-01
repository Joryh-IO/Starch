<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.popcorn.starch.entity.Movie" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/sty/styles.css" />

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
            <button onclick="window.location.href='<c:url value="/Popcorn/login"/>'" >Login</button>
            <button onclick="window.location.href='<c:url value="/Popcorn/login"/>'" >Sign up</button>
            <button onclick="window.location.href='<c:url value="/Popcorn/profile"/>'" >Orders</button>
        </div>
    </div>
    <div class="caros">
        <div class="imgcontainer">    
            <div class="matter">
                <h4>Trending</h4>
                <h3>Lost in sea</h3>
                <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                    Ut enim ad minim veniam,dolor sit amet, consectetur adipiscing elit, 
                    sed do eiusmod tempor "</p>
                <p>ratings:</p>
            </div>
            <div class="commentbox">
                <div class="c1 a"><p>comment</p></div>
                <div class="c2 a"><p>comment</p></div>
                <div class="c3 a"><p>comment</p></div>
            </div>
        </div>
    </div>
    <div class="genreline">
        <ul>
            <li>ACTION</li>
            <li>COMEDY</li>
            <li>ROMCOM</li>
            <li>FANTASY</li>
            <li>MYSTERY</li>
            <li>SCI-FI</li>
        </ul>
    </div>
    
    <div class="cardsection">

		<c:forEach var="movie" items="${movies}">

        <div class="card" style="background-image: url('${movie.posterUrl}')" onclick="window.location.href= '<c:url value="/Popcorn/movie/${movie.mid}"/>'">
            <div class="set">
                <h4>${movie.title}</h4>
                <p>something...</p>
                <p>ratings:  </p>
            </div>
        </div>

	</c:forEach>

	
    </div>
    <footer></footer>
</body>
</html>