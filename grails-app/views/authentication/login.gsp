<html>
<head>
	<title>Login</title>
	<meta name="layout" content="main"/>
</head>
<body>
	<g:form name="create" action="authenticate" class="form-signin" role="form">
		<p>Login:<g:textField name="login" class="form-control"/></p>
		<p>Senha:<g:passwordField name="senha" class="form-control"/></p>
		<p><g:submitButton name="entrar" value="Entrar" class="btn btn-lg btn-primary"/></p>
	</g:form>
</body>
</html>