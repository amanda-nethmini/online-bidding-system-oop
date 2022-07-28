<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Auctella</title>
</head>
<body>

	<h1>Title</h1>
	<c:forEach var="bid" items="${bidDetails}">
	
		${bid.PaintingID}
		${bid.PaintingName}
		${bid.Category}
		${bid.BidAmount}
		${bid.BidEndTime}
		${bid.BidID}
	
	</c:forEach>

</body>
</html>