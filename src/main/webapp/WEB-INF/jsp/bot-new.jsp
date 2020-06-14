<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Bot - Novo</title>
		
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
				</ul>
			</div>
		</nav>
	
		<div class="container-fluid mt-4">
			<form:form modelAttribute="bot"
				action="${pageContext.request.contextPath}/bot" method="post">
	
				<spring:hasBindErrors name="bot">
					<div class="alert alert-danger" role="alert">
						<form:errors path="*" class="has-error" />
					</div>
				</spring:hasBindErrors>
	
				<div class="form-group">
					<label class="control-label" for="name">Nome:</label>
					<form:input type="text" path="name" id="name"
						class="form-control" maxlength="50" size="50" />
					<font color="red"><form:errors path="name" /></font><br />
				</div>
				
				<div class="form-group">
					<label class="control-label" for="welcomeMsg">Msg Boas Vindas:</label>
					<form:input type="text" path="welcomeMsg" id="welcomeMsg"
						class="form-control" maxlength="50" size="50" />
					<font color="red"><form:errors path="welcomeMsg" /></font><br />
				</div>
				
				<div class="form-group">
					<label class="control-label" for="farewellMsg">Msg Despedida:</label>
					<form:input type="text" path="farewellMsg" id="farewellMsg"
						class="form-control" maxlength="50" size="50" />
					<font color="red"><form:errors path="farewellMsg" /></font><br />
				</div>
				
				<div class="form-group">
					<label class="control-label" for="downtime">Tempo Limite:</label>
					<form:input type="number" min="0" path="downtime" id="downtime"
						class="form-control" maxlength="50" size="50" />
					<font color="red"><form:errors path="downtime" /></font><br />
				</div>
				
				<div class="form-group">
					<label class="control-label" for="defaultAnswer">Msg Padrão:</label>
					<form:input type="text" path="defaultAnswer" id="defaultAnswer"
						class="form-control" maxlength="50" size="50" />
					<font color="red"><form:errors path="defaultAnswer" /></font><br />
				</div>
	
				<hr>
	
				<div class="d-flex justify-content-end">
					<a class="btn btn-default btn-lg" href="${pageContext.request.contextPath}/bot">Cancelar</a>
					<button type="submit" class="btn btn-primary btn-lg">Gravar</button>
				</div>
	
				<br>
				<br>
			</form:form>
		</div>
	
		<script src="/js/jquery.js"></script>
		<script src="/js/bootstrap.min.js"></script>
	</body>
</html>