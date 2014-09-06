<html>
<head>
	<title>Novo Usuario</title>
	<meta name="layout" content="main"/>
	<asset:stylesheet href="bootstrap.min.css"/>
</head>
<body>
	<g:form name="create" action="save" class="form-signin" role="form">
		<p>Nome:<g:textField name="nome" class="form-control"/></p>
		<p>Login:<g:textField name="login" class="form-control"/></p>
		<p>Senha:<g:passwordField name="senha" class="form-control"/></p>
		<p><g:submitButton name="save" value="Save" class="btn btn-lg btn-primary"/></p>
	</g:form>
</body>
</html>