<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN PAGE</title>
<style type="text/css">

	table
	{
		margin: auto;
		border-spacing:20px 25px;
		border-style: solid;
	}
	h4
	{
		text-align:center
	}

</style>
</head>
<body>

<h1>Hello!</h1>
<h4>HINT: hope</h4>

<p>
	<font color="red">${errorMessage}</font>
</p>

<form action="LoginServlet" method="POST">
	<table>
		<tr>
			<td></td>
			<td>
				<h4 style="float:left">&nbsp;&nbsp;LOGIN</h4>
			</td>
		</tr>
		<tr>
			<td>USERNAME</td>
			<td>
				<input type="text" name="name">
			</td>
		</tr>
		<tr>
			<td>PASSWORD</td>
			<td>
				<input type="password" name="password">
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input style="float: right" type="submit" value="login">
			</td>
		</tr>
	</table>
</form>

</body>
</html>
