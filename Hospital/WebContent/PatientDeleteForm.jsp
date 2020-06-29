<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">

	table
	{
		margin: auto;
		border-spacing: 15px 20px;
	}
</style>

</head>
<body>

<%@page import="com.hospital.dao.HospitalDao,com.hospital.declaration.PatientDeclaration"%>

<% 

String id=request.getParameter("patientId"); 
PatientDeclaration pd = HospitalDao.ProfileById(Integer.parseInt(id));
//out.print("welcome "+request.getParameter("patientId")); 

%>

<form action="DeleteSuccessFail.jsp" method="post">
<input type="hidden" name="patientId" value="<%=pd.getPatientId() %>"/>
<table>	
	<tr>
		<td>Patient SSN Id :</td>
		<td><input type="text" name="patientSSNId" value="<%=pd.getPatientSSNId()%>" disabled/></td>
	</tr>
	<tr>
		<td>Patient Name :</td>
		<td><input type="text" name="patientName" value="<%=pd.getPatientName()%>" disabled/></td>
	</tr>
	<tr>
		<td>Patient Age :</td>
		<td><input type="text" name="patientAge" value="<%=pd.getPatientAge()%>" disabled/></td>
	</tr>
	<tr>
		<td>Date Of Admission :</td>
		<td><input type="text" name="dateOfAdmission" value="<%=pd.getDateOfAdmission()%>" disabled/></td>
	</tr>
	<tr>
		<td>Type Of Bed :</td>
		<td><input type="text" name="typeOfBed" value="<%=pd.getTypeOfBed()%>" disabled/></td>
	</tr>
	<tr>
		<td>Address :</td>
		<td><input type="text" name="address" value="<%=pd.getAddress()%>" disabled/></td>
	</tr>
	<tr>
		<td>State :</td>
		<td><input type="text" name="state" value="<%=pd.getState()%>" disabled/></td>
	</tr>
	<tr>
		<td>City :</td>
		<td><input type="text" name="city" value="<%=pd.getCity()%>" disabled/></td>
	</tr>
	<tr>
		<td><input type="submit" value="Delete"/></td>
		<td><a href="SecondPage.jsp">Cancel</a></td>
	</tr>
</table>
</form>

</body>
</html>