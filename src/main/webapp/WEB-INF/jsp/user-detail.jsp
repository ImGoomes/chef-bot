<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Usu�rio - Detalhes</title>

<link rel="stylesheet" href="/css/bootstrap.min.css" />
</head>
<body style="background-color: #AEAEAE">

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#"> <img src="/img/chef.png"
			style="width: 64px" /> Chefbot
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath}/bot">Bot </a></li>
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath}/segment">Segmento</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath}/user">Usu�rio</a></li>
			</ul>
		</div>
	</nav>

	<div class="container">
		<div class="card mt-4">

			<h2 class="pt-3 pl-3">Detalhes do usu�rio</h2>
			<hr>

			<div class="col-lg-12">
				<div class="data">

					<div class="form-group">
						<label class="control-label" for="name">Nome:</label> <b>${user.name}</b>
					</div>

					<div class="form-group">
						<label class="control-label" for="welcomeMsg">Email:</label> <b>${user.email}</b>
					</div>

					<div class="form-group">
						<label class="control-label" for="farewellMsg">Senha:</label> <b>${user.password}</b>
					</div>
					<hr>
					<div class="d-flex justify-content-end">
						<a class="btn btn-default btn-lg"
							href="${pageContext.request.contextPath}/user">Voltar</a>
					</div>
					<br>
				</div>
			</div>
		</div>
	</div>

	<script src="/js/jquery.js"></script>
	<script src="/js/bootstrap.min.js"></script>
</body>
</html>