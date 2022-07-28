<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<link rel = "stylesheet" href = "css/buyerRegister.css"/>
	<script src = "js/buyerRegister.js"> </script>
	<meta charset="ISO-8859-1">
	<title>Registration Page</title>
	<style>
	body {
  		background-image: url("images/registerBackground.jpg");
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


<div style ="background-color:#ebebe0;	width: 400px; border: 5px solid #000000; padding: 50px;	font-size: 20px; margin: 150px 0px 250px 410px;">
			
		<div  style="margin: 5px -10px 25px 60px; font-family:"Times New Roman", Times, serif;"> <h1> REGISTER NOW </h1> </div>
		
		<div style="margin: 5px 20px 50px 85px;">
		
			<form action="insert" method="post">
		
			Name <br>
			<input type="text" name="name" style ="width:250px; height:25px; outline:none;" required> <br><br>
			
			NIC Number <br>
			<input type="text" name="nic" style ="width:250px; height:25px; outline:none;" required> <br><br>
			
			Gender <br>
			<input type = "radio" name = "gender" value="Male"> Male
			<input type = "radio" name = "gender" value="Female"> Female <br><br>
				
			Phone Number <br>
			<input type="text" name="phone" style ="width:250px; height:25px; outline:none;" required> <br><br>
			
			Email Address <br>
			<input type="text" name="email" style ="width:250px; height:25px; outline:none;" required> <br><br>
			
			User Name <br>
			<input type="text" name="username" style ="width:250px; height:25px; outline:none;" required> <br><br>
			
			Password <br>
			<input type="password" name="password" style ="width:250px; height:25px; outline:none;" required> <br><br>
			
			<label> Accept privacy policy terms </label>
			<input type = "checkbox" id = "policy" name = "policy"  onclick="enableSubmit()"> <br><br>
			
			<input type = "reset" id = "reset" name = "reset" value = "Reset" style="background:black; color:white; padding:15px 30px; text-align:center; display:inline-block;
			border-radius:8px; margin-left:20px"> 
			
			<input type="submit" id="submit" name="submit" value="Register" style="background:black; color:white; padding:15px 30px; text-align:center; display:inline-block; 
			border-radius:8px; margin-left:0px" disabled>
			
		
			</form>
		</div>			
	
</div>


<footer>

    <div class="footer" style=" bottom: -775px;">  
     
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