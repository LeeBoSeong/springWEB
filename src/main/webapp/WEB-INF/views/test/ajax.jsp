<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="text" id="name">
<button onclick="get()">GET</button>
<button onclick="post()">POST</button>

<script>
	function get(){
		const xhr = new XMLHttpRequest();
		xhr.open('GET','/ajax/test?name=' + document.querySelector('#name').value);
		xhr.onreadystatechange = function(){
			if(xhr.readyState===4){
				if(xhr.status===200){
					alert(xhr.responseText);
				}
			}
		}
		xhr.send();
	}
	
	function post(){
		const param = {
				name : document.querySelector('#name').value
		}
		const json = JSON.stringify(param);
		const xhr = new XMLHttpRequest();
		xhr.open('POST','/ajax/test');
		xhr.setRequestHeader('Content-Type','application/json;charset=UTF-8');
		xhr.onreadystatechange = function(){
			if(xhr.readyState===4){
				if(xhr.status===200){
					alert(xhr.responseText);
				}
			}
		}
		xhr.send(json);
	}
</script>
</body>
</html>