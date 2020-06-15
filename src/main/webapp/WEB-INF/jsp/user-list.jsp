<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Usu�rio - Listagem</title>

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

	<a href="${pageContext.request.contextPath}/user/form?page=user-new"
		class="btn btn-primary m-4">Criar usu�rio</a>

	<c:if test="${not empty users}">
		<table class="table table-striped table-dark">
			<thead>
				<tr>
					<th data-field="id">ID</th>
					<th data-field="name">Nome</th>
					<th data-field="email">Email</th>
					<th class="actions" width="220">A��es</th>
				</tr>
			</thead>
			<tbody>

				<c:forEach items="${users}" var="user">
					<tr>
						<td>${user.id}</td>
						<td>${user.name}</td>
						<td>${user.email}</td>
						
						<td class="actions"><form:form
								action="${pageContext.request.contextPath}/user/${user.id}"
								method="delete" id="form">

								<a href="${pageContext.request.contextPath}/user/${user.id}">
									<img src="/img/detail.png" style="width: 26px">
								</a>
								<a
									href="${pageContext.request.contextPath}/user/form?page=user-edit&id=${user.id}">
									<img src="/img/edit2.png" style="width: 26px" />
								</a>
								<a href="#" onClick="document.getElementById('form').submit();">
									<img src="/img/delete.png" style="width: 26px">
								</a>
							</form:form></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>
	<div class="container-fluid mt-4">
		<c:if test="${empty users}">
			<div class="alert alert-warning" role="alert">Nenhum usu�rio
				encontrado!</div>
		</c:if>
	</div>

	<script src="/js/jquery.js"></script>
	<script src="/js/bootstrap.min.js"></script>
</body>
</html>