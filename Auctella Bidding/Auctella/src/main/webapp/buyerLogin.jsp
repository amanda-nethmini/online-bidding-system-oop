<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<link rel = "stylesheet" href = "css/buyerLogin.css"/>
	<meta charset="ISO-8859-1">
	<title>Login Page</title>
	<style>
	body {
  		background-image: url("images/backgroundImage.jpg");
  		background-repeat: no-repeat;
  		background-attachment: fixed;
  		background-size:cover;  		
	}
	</style>
</head>

<body>

<ul class="header">
    <img src="images/logo.JPG" alt="Auctella" class="logo">
      <li><a href="#">Home</a></li>
      <li><a href="contactUs.jsp">Contact Us</a></li>
      <li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Category</a>
        <div class="dropdown-content">
        <a href="#">Oil Paintings</a>
        <a href="#">Spray Paintings</a>
        <a href="#">Pastel Paintings</a>
        <a href="#">Acrylic Paintings</a>
      </div>
      <li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Sign Up</a>
        <div class="dropdown-content">
        <a href="buyerRegister.jsp">As a buyer</a>
        <a href="#">As a seller</a>
      </div>
      <li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Sign In</a>
        <div class="dropdown-content">
        <a href="buyerLogin.jsp">As a buyer</a>
        <a href="#">As a seller</a>
      </div>
    </li>
</ul>

<div class="login">
<h1 class="loginHeading">BUYER LOGIN</h1>  
	 		
	 		<div class="loginForm">
			 	<form action="login" method="post"> 				
					
					<b>User Name</b> <br>
					<input type="text" name="username" placeholder="Enter your username" style ="width:250px; height:35px; outline:none; padding: 12px 20px;" required> <br><br>
					
					<b>Password</b>  <br>
					<input type="password" name="password" placeholder="Enter your password" style ="width:250px; height:35px; outline:none; padding: 12px 20px;" required> <br><br>	
					
					<input type="submit" name="submit" value="Login" style="background:black; color:white; padding:15px 32px; text-align:center; display:inline-block; 
					border-radius:8px; margin: 0px 0px 0px 100px;">	<br>							
					
				</form>	
				<br>
				<div class="bottom">
				    <input type="checkbox" checked="checked" name="remember"> Remember me 
				    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				    <span class="psw">Forgot <a href="#">password?</a></span>
			    </div>		
 			</div>
</div>
 
 <footer>

    <div class="footer">  
     
    <!--styles for footer-->
  
    <h3 style="position: absolute;
    color: white;
    text-align: center;
    font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
    margin: 120px 0px -10px 500px;
    font-size: 13px;">Copyrights @2021 Auctella Pvt Ltd All Right Reserved <br>View more at https://www.auctella.com
    </h3>
  
    <div class="socialmedia">
        <a href="">
            <img src="images/instagram.png" alt="instagram" style="width: 25px;
            height: 25px;
            margin: 10px 0 0 58px;">
        </a>
        <a href="">
            <img src="images/twitter.png" alt="twitter" style="width: 25px;height: 25px; margin: 0 0 0 46px;">
        </a>
        <a href="">
            <img src="images/facebook.png" alt="facebook" style="width: 17px;
            height:26px; margin: 0 0 0 46px;">
        </a>        
    </div>
    
    </div> 
    
</footer>
		

</body>
</html>