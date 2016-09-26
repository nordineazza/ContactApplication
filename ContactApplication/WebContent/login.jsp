<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />
	<title>Formulaire de connexion</title>
	<style>
		footer {
			margin-top: 25px;
		}
	</style>
	
</head>
<body>
	<div class="container">
	<section>
	<h2>Formulaire de connexion servlet :</h2>
	
	<form role="form" action="Login" method="POST">
	
		<div class="form-group">
			<label for="name">Nom du contact</label>
			<input type="text" class="form-control" name="name">
		</div>

		<div class="form-group">
			<label for="password">Mot de passe</label>
			<input type="password" class="form-control" name="password">
		</div>
		<input type="submit" class="btn btn-primary" value="Se connecter" />
	</form>
	</section>
	<footer>
	  	<a href="index.html">Revenir au menu</a>
	</footer>
	</div>

</body>
</html>