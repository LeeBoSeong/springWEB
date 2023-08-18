<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form method="GET" action="/param">
		<input type="text" name="name"><br>
		<input type="text" name="age"><br>
		<input type="text" name="address"><br>
		<input type="text" name="birth"><br>
		
		<button>GET</button>
	</form>
	
	<form method="POST" action="/param">
		<input type="text" name="name"><br>
		<input type="text" name="age"><br>
		<input type="text" name="address"><br>
		<input type="text" name="birth"><br>
		
		<button>POST</button>
	</form>
</body>
</html>