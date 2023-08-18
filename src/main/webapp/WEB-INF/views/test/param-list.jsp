<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>이름</th>
		</tr>
		<tbody id="tbody"></tbody>
	</table>
	<button onclick="location.href='/views/test/param-ajax'">등록</button>
	
	<script>
		window.addEventListener('load',function(){
			const xhr = new XMLHttpRequest();
			xhr.open('GET','/params');
			xhr.onreadystatechange = function(){
				if(xhr.readyState===4){
					if(xhr.status===200){
						const list = JSON.parse(xhr.responseText);
						let html = '';
						for(const param of list){
							html += '<tr>';
							html += '<td>' +param.num + '</td>';
							html += '<td>' +param.name + '</td>';
							html += '</tr>';
						}
						document.querySelector('#tbody').innerHTML = html;
					}
				}
			}
			xhr.send();
			alert('load');
		})
	</script>
</body>
</html>