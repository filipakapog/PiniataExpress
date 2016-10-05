<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href= "index.css" rel="stylesheet" type="text/css" media = "screen">
<title>Login SimpleMed</title>
</head>
<body>
<form action = "ProductList.jsp">
<div id = "main">
	<div id = "header">
		<center><h2>Log In:</h2></center>
	</div>
	<div id = "centerPage">
		<center><table>
			<tr>
				<td style = "text-align: right;">Username:</td>
				<td><input type = "text" id = "username" name = "username"/></td>
			</tr>
			<tr>
				<td style = "text-align: right;">Password:</td>
				<td><input type = "password" id = "password" name = "password"/></td>
			</tr>
		</table></center>
	</div>
	
	<div id = "buttons">
		<center>
			<input type = "submit" id = "regButton" name = "regButton" value = "Log In"/>
		</center>
	
	</div>
</div>
</form>
</body>
</html>