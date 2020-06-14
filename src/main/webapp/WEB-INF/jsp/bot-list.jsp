<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Bot - Listagem</title>
		
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
					<li class="nav-item active"><a class="nav-link"
						href="${pageContext.request.contextPath}/bot">Bot <span
							class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/segment">Segmento</a></li>
				</ul>
			</div>
		</nav>
	
		<c:if test="${not empty bots}">
			<table class="table table-striped">
				<thead>
					<tr>
						<th data-field="id">ID</th>
						<th data-field="name">Nome</th>
						<th data-field="welcomeMsg">Msg Boas Vindas</th>
						<th data-field="farewellMsg">Msg Despedida</th>
						<th data-field="downtime">Tempo Limite</th>
						<th data-field="defaultAnswer">Msg Padrão</th>
						<th class="actions" width="220">Ações</th>
					</tr>
				</thead>
				<tbody>
	
					<c:forEach items="${bots}" var="bot">
						<tr>
							<td>${bot.id}</td>
							<td>${bot.name}</td>
							<td>${bot.welcomeMsg}</td>
							<td>${bot.farewellMsg}</td>
							<td>${bot.downtime}</td>
							<td>${bot.defaultAnswer}</td>
	
							<td class="actions"><form:form
									action="${pageContext.request.contextPath}/bot/${bot.id}"
									method="delete">
	
									<a class="btn btn-success btn-xs"
										href="${pageContext.request.contextPath}/bot/${bot.id}">Detalhes</a>
									<a class="btn btn-warning btn-xs"
										href="${pageContext.request.contextPath}/bot/form?page=bot-edit&id=${bot.id}">Editar</a>
									<input type="submit" value="Excluir"
										class="btn btn-danger btn-xs">
								</form:form></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>
		<div class="container-fluid mt-4">
			<c:if test="${empty bots}">
				<div class="alert alert-warning" role="alert">
					Nenhum bot encontrado!
				</div>
			</c:if>
		</div>
	
		<script src="/js/jquery.js"></script>
		<script src="/js/bootstrap.min.js"></script>
	</body>
</html>