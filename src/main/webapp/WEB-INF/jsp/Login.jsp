<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name = "viewport" content = "width=device-width, initial-scale=1.0">
<meta>
<title>Login Page</title>
<link rel = "stylesheet" href = "style1.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<!-- ==========Boxicon========================= -->
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

<style type="text/css">
	*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family:"Poppins" ,sans-serif;
}

body{
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
/* 	background:  #212939; */
 	background: url('images/background.jpg') no-repeat; 
	background-size: cover;
	background-position: center;
}

.wrapper{
	width: 420px;
	background: transparent;
	border: 2px sold rgba(255,255,255,.2);
	backdrop-filter: blur(20px);
	box-shadow: 0 0 10px rgba(0,0,0,.2);
	color: #fff;
	border-radius: 10px;
	padding: 30px 40px;
}

.wrapper h1 {
	font-size: 36px;
	text-align: center;
}

.wrapper .input-box{
	position: relative;
	width: 100%;
	height: 40px;
	margin: 30px 0;
}

.input-box input{
	width: 100%;
	height: 100%;
	background: transparent;
	border: none;
	outline: none;
	border: 2px solid rgb(255,255,255,.2);
	border-radius: 40px;
	font-size: 16px;
	color: #fff;
	padding: 20px 45px 20px 20px;
}

.input-box input::placeholder {
	color: #fff;
}

.input-box i {
	position: absolute;
	right: 20px;
	top: 50%;
	transform: translateY(-50%);
	font-size: 20px;
}

.wrapper .btn {
	width: 100%;
	height: 35px;
	background: #fff;
	border: none;
	outline: none;
	border-radius: 40px;
	box-shadow: 0 0 10px rgba(0,0,0,.1);
	cursor: pointer;
	font-size: 16px;
	color: #333;
	font-weight: 600;
}

.wrapper .pa{
	text-align: center;
}

.wrapper .mb-3{
	text-align: center;
}

.logo-details{
	height: 60px;
	width: 100%;
	display: flex;
	align-items: center;
}

.logo-details .logo-name img{
	font-size: 40px;
/* 	background-color: red; */
	color: #fff;
	height: 25px;
	min-width: 35px;
	text-align: center;
	line-height: 50px;
	transiton: all 0.5s ease;
	padding-left: 35px;
}
</style>



</head>
<body>
<div class = "wrapper">
	<form method="POST" action="login">
		<div class="logo-details">
			<span class="logo-name"><br><img src="images/logo.png">
			</span>
		</div>
		<h1>Login</h1>
		<div class = "input-box">
			<input type = "text" placeholder="Username" required="required" name = "username">
			<i class='bx bxs-user'></i><br>
			<div class="form-error text-danger" id = "errorusername"></div><br>
		</div>
		<div class = "input-box">
			<input type = "password" placeholder="Password" required="required" name = "password">
			<i class='bx bxs-lock-alt'></i><br>
			<div class="form-error text-danger" id = "errorpassword"></div><br>
		</div>
		
			<div class=" mb-3">
				<label> 
				<c:if test="${ not empty error}">
					<p class="text-danger">
						<c:out value="${error}"></c:out>
					</p>
				</c:if>
				</label><br>
			</div>
		
		<button type = "submit" class = "btn" id = "login">Login</button>
		<div class = "pa"><br>
		<p class="mt-5 mb-3 text-muted " style = "font-size: 12px">Lakshitha Stores &copy; 2023</p>
		</div>
	
	</form>
	
</div>
</body>
</html>