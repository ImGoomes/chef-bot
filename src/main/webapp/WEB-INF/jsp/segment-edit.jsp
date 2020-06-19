<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Segmento - Edição</title>
		
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
	
		<div class="container-fluid mt-4">
			<form:form modelAttribute="segment"
				action="${pageContext.request.contextPath}/segment/${segment.id}" method="put">
	
				<div class="form-group">
					<label class="control-label" for="name">Nome:</label>
					<form:input type="text" path="name" id="name"
						class="form-control" maxlength="50" size="50" />
					<font color="red"><form:errors path="name" /></font><br />
				</div>
				
				<div class="form-group">
					<label class="control-label" for="bot">Bot:</label>
					<form:select id="bot" path="bot.id" class="form-control">
						<form:options items="${bots}" itemLabel="name" itemValue="id" />
					</form:select>
				</div>
	
				<hr>
	
				<div class="d-flex justify-content-end">
					<a class="btn btn-default btn-lg" href="${pageContext.request.contextPath}/segment">Cancelar</a>
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