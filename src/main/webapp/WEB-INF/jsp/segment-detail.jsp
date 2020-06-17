<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Segmento - Detalhes</title>

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
					href="${pageContext.request.contextPath}/user">Usuário</a></li>
			</ul>
		</div>
	</nav>

	<div class="container">
		<div class="card mt-4">
		
			<h2 class="pt-3 pl-3">Detalhes do Segmento</h2>		
			<hr>
		
			<div class="col-lg-12">
				<div class="data">

					<div class="form-group">
						<label class="control-label" for="name"><b>Nome:</b> </label> ${segment.name}
					</div>

					<h2>Bot:</h2>

					<div class="form-group">
						<label class="control-label" for="botName"><b>Nome:</b></label> ${segment.bot.name}
					</div>

					<div class="form-group">
						<label class="control-label" for="botWelcomeMsg"><b>Msg Boas
							Vindas:</b></label> ${segment.bot.welcomeMsg}
					</div>

					<div class="form-group">
						<label class="control-label" for="botFarewellMsg"><b>Msg
							Despedida:</b></label> ${segment.bot.farewellMsg}
					</div>

					<div class="form-group">
						<label class="control-label" for="botDowntime"><b>Tempo Limite:</b></label>
						${segment.bot.downtime}
					</div>

					<div class="form-group">
						<label class="control-label" for="botDefaultAnswer"><b>Msg
							Padrão:</b></label> ${segment.bot.defaultAnswer}
					</div>

					<hr>
					<div class="d-flex justify-content-end">
						<a class="btn btn-default btn-lg"
							href="${pageContext.request.contextPath}/segment">Voltar</a>
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