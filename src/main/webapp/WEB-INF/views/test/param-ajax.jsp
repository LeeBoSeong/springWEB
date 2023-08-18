<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type="text" id="name"><br>
	<input type="text" id="age"><br>
	<input type="text" id="address"><br>
	<input type="text" id="birth"><br>
	<button onclick="get()">GET</button>
	<button onclick="post()">POST</button>
	
	<script>
		
	function post(){
		const xhr = new XMLHttpRequest();
		xhr.open('POST','/params');
		xhr.setRequestHeader('Content-Type','application/json');
		xhr.onreadystatechange = function(){
			if(xhr.readyState===4){
				if(xhr.status===200){
					if(xhr.responseText==='1'){
						alert('정상 입력 완료');
						location.href='/views/test/param-list';
					}
				}
			}
		}
		const param = {
				name : document.querySelector('#name').value,
				age : document.querySelector('#age').value,
				address : document.querySelector('#address').value,
				birth : document.querySelector('#birth').value
		}
		const json = JSON.stringify(param);
		xhr.send(json);
	}
	</script>
</body>
</html>