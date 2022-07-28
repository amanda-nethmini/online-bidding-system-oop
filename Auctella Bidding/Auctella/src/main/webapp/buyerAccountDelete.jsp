<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<link rel = "stylesheet" href = "css/buyerAccountDelete.css"/>
	<meta charset="ISO-8859-1">
	<title>Delete My Account Page</title>
	<style>
	body {
  		background-image: url("images/backgroundImage1.jpg");
  		background-repeat: no-repeat;
  		background-attachment: fixed;
  		background-size:cover;  		
	}
	</style>
	<script>
		function goBack() {
		  window.history.back();
		}
	</script>
	
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

<div class="buyerDelete">	
	<%
		String id = request.getParameter("Bid");
		String name = request.getParameter("Bname");
		String nic = request.getParameter("Bnic");
		String gender = request.getParameter("Bgender");
		String phone = request.getParameter("Bphone");
		String email = request.getParameter("Bemail");
		String userName = request.getParameter("BuserName");
		String password = request.getParameter("Bpassword");							
	%>
	
<center><h1>DELETE YOUR ACCOUNT HERE!!</h1></center>

	<table width="100%"> 
	<tr><td align="center" height="700" bgcolor="#eeeedd" style="color:black">		
	
		<form action="delete" method="post" style="font-size: 20px;">
		
			Buyer ID <br>
			<input type="text" name="Bid" value="<%=id%>" style ="width:500px; height:25px; outline:none;" readonly> <br><br>
			
			Name <br>
			<input type="text" name="Bname" value="<%=name%>" style ="width:500px; height:25px; outline:none;" readonly> <br><br>
			
			NIC Number <br>
			<input type="text" name="Bnic" value="<%=nic%>" style ="width:500px; height:25px; outline:none;" readonly> <br><br>
			
			Gender <br>
			<input type = "text" name = "Bgender" value="<%=gender%>" style ="width:500px; height:25px; outline:none;" readonly> <br><br>
		
			Phone Number <br>
			<input type="text" name="Bphone" value="<%=phone%>" style ="width:500px; height:25px; outline:none;" readonly> <br><br>
			
			Email Address <br>
			<input type="text" name="Bemail" value="<%=email%>" style ="width:500px; height:25px; outline:none;" readonly> <br><br>
			
			User Name <br>
			<input type="text" name="Busername" value="<%=userName%>" style ="width:500px; height:25px; outline:none;" readonly> <br><br>			
						
			<input type="submit" name="submit" value="Delete Account" class="deleteDButton">		
		</form>
			<br>
			<button onclick="goBack()" name="backButton" class="deleteDButton"> Back </button>
			
		
	</td></tr>	
	</table>
</div>

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