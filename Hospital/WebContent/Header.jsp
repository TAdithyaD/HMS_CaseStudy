
<!DOCTYPE html>
<html>
<head>

	<title>Welcome Page</title>

	<meta name="viewport" content="width=device-width, initial-scale=1"> 

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"> 

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"> 
	</script> 

	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"> 
	</script> 

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"> 
	</script>
	
	<style type="text/css">
		body
		{
			text-align:center;
		}
	</style>

</head>

<body> 

	<div class="jumbotron jumbotron-fluid"> 

		<div class="container"> 

			<h1 style="color:orange;"> 
				ABC Hospital 
			</h1>  

			<p>Hospital in progress...</p>

			<div class="dropdown">
				<a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

					Desk Executive

				</a>

				<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">

					<a class="dropdown-item" href="CreatePatient.jsp">Register Patient</a>
					<a class="dropdown-item" href="UpdatePatient.jsp">Update Patient Info</a>
					<a class="dropdown-item" href="DeletePatient.jsp">Delete Patient Info</a>
					<a class="dropdown-item" href="ViewPatient.jsp">Patients List</a>
					

				</div>

				<a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

					Pharmacist

				</a>

				<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">

					<a class="dropdown-item" href="https://www.google.com">Google</a>
					<a class="dropdown-item" href="#">Another action</a>
					<a class="dropdown-item" href="#">Something else here</a>

				</div>

				<a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

					Diagnostician

				</a>

				<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">

					<a class="dropdown-item" href="#">Action</a>
					<a class="dropdown-item" href="#">Another action</a>
					<a class="dropdown-item" href="#">Something else here</a>

				</div>


			</div>

		</div> 
	</div> 

</body>

</html>