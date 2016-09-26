<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />

<title>Créer un contact</title>
<style>
	footer {
		margin-top: 25px;
	}
</style>
</head>
<body>
	<div class="container">
	<section>
		<h2>Créer un contact</h2>
		<form role="form" action="CreateContact" method="POST">
				<div class="form-group">
					<label for="lastname">Last Name</label>
					<input type="text" class="form-control" name="lastname">
				</div>
				
				<div class="form-group">
					<label for="name">Name</label>
					<input type="text" class="form-control" name="name">
				</div>

				<div class="form-group">
					<label for="mail">Mail</label>
					<input type="text" class="form-control" name="mail">
				</div>

				<input type="submit" class="btn btn-default" value="Créer">
  		</form>
  	</section>
  	<footer>
  		<a href="index.html">Revenir au menu</a>
  	</footer>
  	</div>
</body>
</html>