<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<link rel = "stylesheet" href = "css/buyerAccount.css"/>
	<meta charset="ISO-8859-1">
	<title>My Account Page</title>
	<style>
	body {
  		background-image: url("images/backgroundImage1.jpg");
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

<div class="buyerAccount">
	<table width="100%" height="80"> <tr><td  height="500">
		
		<h1>MY ACCOUNT</h1>
	
		<table align="center" width="100%"  border="1px" bgcolor="#eeeedd" style="color:black; border-collapse: collapse;">	
			
			<c:forEach var="buyer" items="${buyerDetails}"> 
			
			<c:set var="id" value="${buyer.id}"/>
			<c:set var="name" value="${buyer.name}"/>
			<c:set var="nic" value="${buyer.nic}"/>
			<c:set var="gender" value="${buyer.gender}"/>
			<c:set var="phone" value="${buyer.phone}"/>
			<c:set var="email" value="${buyer.email}"/>
			<c:set var="userName" value="${buyer.userName}"/>
			<c:set var="password" value="${buyer.password}"/>
			
			<tr> 
				<td> Buyer ID </td>
				<td> ${buyer.id} </td>
			</tr>	
			<tr> 
				<td> Name </td>
				<td> ${buyer.name} </td>
			</tr>
			<tr> 
				<td> NIC </td>
				<td> ${buyer.nic} </td>
			</tr>
			<tr> 
				<td> Gender </td>
				<td> ${buyer.gender} </td>
			</tr>
			<tr> 
				<td> Telephone Number </td>
				<td> ${buyer.phone} </td>
			</tr>
			<tr> 
				<td> Email Address </td>
				<td> ${buyer.email} </td>
			</tr>
			<tr> 
				<td> User Name </td>
				<td> ${buyer.userName} </td>
			</tr>
			<tr> 
				<td> Password </td>
				<td> ${buyer.password} </td>
			</tr>		
			
			</c:forEach>	
		</table>
	</td>
	
	<td width="25%" style="text-align:center">
	<br><br><br><br><br>
	
	<c:url value="buyerUpdate.jsp" var="buyerUpdate">
	
		<c:param name="Bid" value="${id}"/>
		<c:param name="Bname" value="${name}"/>
		<c:param name="Bnic" value="${nic}"/>
		<c:param name="Bgender" value="${gender}"/>
		<c:param name="Bphone" value="${phone}"/>
		<c:param name="Bemail" value="${email}"/>
		<c:param name="BuserName" value="${userName}"/>
		<c:param name="Bpassword" value="${password}"/>
		
	</c:url>
	
	<div>
		<a href="${buyerUpdate}">
		<button class="updateButton" name="update">Update My Details</button> <br><br><br>
		</a>
	</div>
	
	<div>
		<button class="Button" name="bids">View Placed Bids</button> <br><br><br>		
	</div>
	
	<div>		
		<button class="Button" name="transactions">My Transactions</button> <br><br><br>		
	</div>
	
	<c:url value="buyerAccountDelete.jsp" var="buyerDelete"> 
	
		<c:param name="Bid" value="${id}"/>
		<c:param name="Bname" value="${name}"/>
		<c:param name="Bnic" value="${nic}"/>
		<c:param name="Bgender" value="${gender}"/>
		<c:param name="Bphone" value="${phone}"/>
		<c:param name="Bemail" value="${email}"/>
		<c:param name="BuserName" value="${userName}"/>
		<c:param name="Bpassword" value="${password}"/>
		
	</c:url>
	
	<div>
		<a href="${buyerDelete}">
		<button class="deleteButton" name="delete">Delete My Account</button> 
		</a>
	</div>	
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