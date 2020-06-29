<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	
<title>Patient Creation</title>


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
<!-- <jsp:include page="Header.jsp"></jsp:include> -->
	<h3>CRUD: Create Patient </h3>


	<h2>Patient Registration</h2>
	<form  action="RegisrationSuccesFail.jsp" method="post">
		<table>
			
			<tr>
				<td>Patient SSN Id</td>
				<td>
					<input type="text" name="patientSSNId" required>
				</td>
			</tr>
			<tr>
				<td>Patient Name</td>
				<td>
					<input type="text" name="patientName" required>
				</td>
			</tr>
			<tr>
				<td>Patient Age</td>
				<td>
					<input type="text" name="patientAge" required>
				</td>
			</tr>
			<tr>
				<td>Date of Admission</td>
				<td>
					<input type="Date" name="dateOfAdmission" required>
				</td>
			</tr>
			<tr>
				<td>Type of bed</td>
				<td>    
					<select name="typeOfBed" style="width:145px" required>
						<option>Select</option>
						<option>Single</option>
						<option>General</option>
						<option>Shared</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>Address</td>
				<td>
					<input type="text" name="address" required>
				</td>
			</tr>
			<tr>
				<td>State</td>
				<td>    
					<select name="state" style="width:175px" required>
						<option>Select</option>
						<option>State1</option>
						<option>State2</option>
						<option>State3</option>
						<option>State4</option>
						<option>State5</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>City</td>
				<td>    
					<select name="city" style="width:145px" required>
						<option>Select</option>
						<option>City1</option>
						<option>City2</option>
						<option>City3</option>
						<option>City4</option>
						<option>City5</option>
					</select>
				</td>
			</tr>
			<tr>
			<td>
				<input style="float: right" type="submit" value="Submit">
			</td>
			<td>
				<a href="SecondPage.jsp">Cancel</a>
			</td>
		</tr>
		</table>
	</form>

</body>

</html>