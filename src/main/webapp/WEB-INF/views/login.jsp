<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="Styles/login.css" type="text/css">
</head>
<body>
<body>
    <div class="nav">
        <h2>BOOK</h2>
    </div>


    <div class="container">
        <div class="left">
            <h3>Sign up</h3>
            <hr>
            <div class="in">
                <form action="auth" method="GET">
                    <p>Username</p>
                    <input type="text" name="username">
                    <p>Password</p>
                    <input type="password" name="password">
                    <br>
                    <input type="submit">
                </form>
            </div>
        </div>
        <div class="left">
            <h3>Sign in</h3>
            <hr>
            <div class="in">
                <form action="auth" method="POST">
                    <p>Username</p>
                    <input type="text" name="username">
                    <p>Password</p>
                    <input type="password" name="password">
                    <br>
                    <input type="submit">
                </form>
            </div>
        </div>
    </div>
</body>
</html>