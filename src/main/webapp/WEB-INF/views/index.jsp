<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<link rel="stylesheet" href="/style.css" />
</head>
<body>

<h1>Hotel Search</h1>

	<form action="/results" method="post">
		<p>
			<label for="city">Select City:</label>
			<select id="city" name="city">
  			<option value="Ann Arbor">Ann Arbor</option>
  			<option value="Detroit">Detroit</option>
  			<option value="Ypsilanti">Ypsilanti</option>
			</select>
			
		</p>
		<p>
			<button type="submit">Submit</button>
		</p>
		</form>



</body>
</html>