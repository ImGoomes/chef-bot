<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Segmento - Listagem</title>
		
		<link rel="stylesheet" href="/css/bootstrap.min.css" />
	</head>
	<body style="background-color: #AEAEAE">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
		  <a class="navbar-brand" href="#">
		  	<img src="/img/chef.png" style="width: 64px" />
		  	Chefbot
		  </a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
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
		
		<c:if test="${not empty segments}">
			<table class="table table-striped">
				<thead>
					<tr>
						<th data-field="id">ID</th>
						<th data-field="name">Nome</th>
						<th data-field="botName">Bot</th>
					</tr>
				</thead>
				<tbody>
	
					<c:forEach items="${segments}" var="segment">
						<tr>
							<td>${segment.id}</td>
							<td>${segment.name}</td>
							<td>${segment.bot.name}</td>
	
							<td class="actions">
								<form:form
									action="${pageContext.request.contextPath}/segment/${segment.id}"
									method="delete">
	
									<a class="btn btn-success btn-xs"
										href="${pageContext.request.contextPath}/bot/${segment.id}">Detalhes</a>
									<a class="btn btn-warning btn-xs"
										href="${pageContext.request.contextPath}/bot/form?page=bot-edit&id=${segment.id}">Editar</a>
									<input type="submit" value="Excluir"
										class="btn btn-danger btn-xs">
								</form:form></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>
		<div class="container-fluid mt-4">
			<c:if test="${empty segments}">
				<div class="alert alert-warning" role="alert">
					Nenhum seguimento encontrado!
				</div>
			</c:if>
		</div>
		
		<script src="/js/jquery.js"></script>
		<script src="/js/bootstrap.min.js"></script>
	</body>
</html>