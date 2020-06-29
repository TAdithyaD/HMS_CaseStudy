<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UPDATE PAGE</title>
<style type="text/css">
	table
		{
			margin: auto;
			border-spacing: 15px 20px;
		}
		h2
		{
			text-align: center;
		}
</style>

</head>
<body>

<%@page import="com.hospital.dao.HospitalDao,com.hospital.declaration.PatientDeclaration"%>

<h2>Update Patient Details</h2>

<form action="PatientUpdateForm.jsp?patientId=${cd.getPatientId()}">
<%// ProfileById %>
<table>
	<tr>
		<td>
			Enter Patient Id:
		</td>
		<td>
			<input type="text" name="patientId" onclick="this.value=''">
		</td>
		<td>
			<input type="submit" value="GET">
		</td>
	</tr>
</table>
</form>

</body>
</html>