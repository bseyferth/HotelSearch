<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Results</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<link rel="stylesheet" href="/style.css" />
</head>
<body>

<h1>Hotel Results</h1>

<table class="table">
			<thead>
				<tr>
					<th>City</th><th>Hotel Name</th><th>Price Per Night</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${ list }">
					<tr>
						<td>${ item.city }</td>
						<td>${ item.name }</td>
						<td>${ item.pricePerNight}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		<p>
		<a href = "/">Search Again</a>
		</p>



</body>
</html>