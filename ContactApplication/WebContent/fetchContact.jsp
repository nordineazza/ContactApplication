<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />
	<title>Rechercher un contact</title>
	<style>
		footer {
			margin-top: 25px;
		}
	</style>

</head>
<body>
	<div class="container">
	<section>
		<h2>Rechercher un contact</h2>
		<form role="form" method="POST" action="RechercheContact">

			<div class="form-group">
				<label for="contact">Nom du contact</label>
				<input type="text" class="form-control" name="contact">
			</div>

			<input type="submit" class="btn btn-info" value="Rechercher" />
		</form>
	</section>
	<footer>
	 	<a href="index.html">Revenir au menu</a>
	</footer>
	</div>
</body>
</html>