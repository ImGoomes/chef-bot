<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Bot - Detalhes</title>
	</head>
	<body>
		<div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="well">
					
					<h2>Bot</h2>
					
						<div class="form-group">
							<label class="control-label" for="name">Nome:</label>
							<b>${bot.name}</b>
                        </div>
                        
                        <div class="form-group">
							<label class="control-label" for="welcomeMsg">Msg Boas Vindas:</label>
							<b>${bot.welcomeMsg}</b>
                        </div>
                        
                        <div class="form-group">
							<label class="control-label" for="farewellMsg">Msg Despedida:</label>
							<b>${bot.farewellMsg}</b>
                        </div>
                        
                        <div class="form-group">
							<label class="control-label" for="downtime">Tempo Limite:</label>
							<b>${bot.downtime}</b>
                        </div>
                        
                        <div class="form-group">
							<label class="control-label" for="defaultAnswer">Msg Padrão:</label>
							<b>${bot.downtime}</b>
                        </div>
                        
						<hr>
						<a class="btn btn-default btn-lg" href="${pageContext.request.contextPath}/bot">Voltar</a>   
                        <br>
                        <br>
                </div>
            </div>
        </div>
    </div>
	</body>
</html>