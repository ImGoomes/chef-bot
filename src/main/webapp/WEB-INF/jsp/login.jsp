<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}
@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
.form-signin {
	width: 100%;
	max-width: 330px;
	padding: 15px;
	margin: auto;
	margin-top: 7em;
}
</style>
<title>Chefbot</title>
</head>
<body>
	<form class="form-signin">
		<h1 class="h3 mb-3 font-weight-normal">Chefbot Login</h1>
		<label for="inputEmail" class="sr-only">Email</label> <input
			type="email" id="inEmail" class="form-control" placeholder="Email"
			required autofocus> <label for="inputPassword"
			class="sr-only">Senha</label> <input type="password" id="inSenha"
			class="form-control" placeholder="Senha" required>
		<div class="checkbox mb-3">
			<label> <input type="checkbox" value="remember-me">
			Manter-se logado
			</label>
		</div>
		<button class="btn btn-lg btn-primary btn-block" type="submit">Logar</button>
	</form>
</body>
</html>