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
		<style>
			.action:hover {
				text-decoration: none;
			}
			.custom-container {
				padding: 12px;
			}
		</style>
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
				<li class="nav-item active"><a class="nav-link"
					href="${pageContext.request.contextPath}/segment">Segmento</a></li>
				<li class="nav-item"><a class="nav-link"
					href="${pageContext.request.contextPath}/user">Usuário</a></li>
			</ul>
		</div>
		</nav>
		
		<a href="${pageContext.request.contextPath}/segment/form?page=segment-new" class="btn btn-primary m-4">Criar Segmento</a>
		
		<div class="custom-container">
			<c:if test="${not empty segments}">
				<table class="table table-striped table-dark">
					<thead>
						<tr>
							<th data-field="id">ID</th>
							<th data-field="name">Nome</th>
							<th data-field="botName">Bot</th>
							<th data-field="actions">Ações</th>
						</tr>
					</thead>
					<tbody>
		
						<c:forEach items="${segments}" var="segment">
							<tr>
								<td>${segment.id}</td>
								<td>${segment.name}</td>
								<td>${segment.bot.name}</td>
		
								<td class="actions"><form:form
										action="${pageContext.request.contextPath}/segment/${segment.id}"
										method="delete" id="form">
		
										<a class="action"
											href="${pageContext.request.contextPath}/segment/${segment.id}">
											<img src="/img/detail.png" style="width: 26px">
										</a>
										<a class="action"
											href="${pageContext.request.contextPath}/segment/form?page=segment-edit&id=${segment.id}">
											<img src="/img/edit2.png" style="width: 26px" />
										</a>
										<a class="action"
											href="#" onClick="document.getElementById('form').submit();">
											<img src="/img/delete.png" style="width: 26px">
										</a>
									</form:form></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:if>
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