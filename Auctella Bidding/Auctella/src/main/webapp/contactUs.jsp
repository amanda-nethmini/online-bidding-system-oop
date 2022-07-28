<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<link rel = "stylesheet" href = "css/contactUs.css"/>
	<meta charset="ISO-8859-1">
	<title>Contact Us Page</title>	
</head>
<body>

	<link href="https://fonts.googleapis.com/css?family=Oleo+Script:400,700" rel="stylesheet">
   	<link href="https://fonts.googleapis.com/css?family=Teko:400,700" rel="stylesheet">
   	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

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


    
  
<section id="contact">
			<div class="section-content">
				<h1 class="section-header">Get in <span class="content-header wow fadeIn " data-wow-delay="0.2s" data-wow-duration="2s"> Touch with us</span></h1>
				<h3>Auctella, your only reason to bid</h3>
			</div>
			<div class="contact-section">
			<div class="container">
				<form>
					<div class="col-md-6 form-line">
			  			<div class="form-group">
			  				<label for="exampleInputUsername">Your name</label>
					    	<input type="text" class="form-control" id="" placeholder=" Enter Name">
				  		</div>
				  		<div class="form-group">
					    	<label for="exampleInputEmail">Email Address</label>
					    	<input type="email" class="form-control" id="exampleInputEmail" placeholder=" Enter Email id">
					  	</div>	
					  	<div class="form-group">
					    	<label for="telephone">Mobile No.</label>
					    	<input type="tel" class="form-control" id="telephone" placeholder=" Enter 10-digit mobile no.">
			  			</div>
			  		</div>
			  		<div class="col-md-6">
			  			<div class="form-group">
			  				<label for ="description"> Message</label>
			  			 	<textarea  class="form-control" id="description" placeholder="Enter Your Message"></textarea>
			  			</div>
			  			<div>

			  				<button type="button" class="btn btn-default submit"><i class="fa fa-paper-plane" aria-hidden="true"></i>  Send Message</button>
			  			</div>
			  			
					</div>
				</form>
			</div>
</section>


<footer>
    <div class="footer">     
    <!--styles for footer-->
  
    <h3 style="position: absolute;
    color: white;
    text-align: center;
    font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
    margin: 120px 0px 0 500px;
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