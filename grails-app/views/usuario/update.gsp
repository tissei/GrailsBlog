<html>
<head>
	<title>Alterar Usuario</title>
	<meta name="layout" content="main"/>
	 <r:require modules="bootstrap"/>
</head>
<body>
<body>
	<g:form name="create" action="save" class="form-signin" role="form">
		<g:hiddenField name="id" value="${usuario.id}" />
		<p>Nome:<g:textField name="nome" value="${usuario.nome}"  class="form-control"/></p>
		<p>Login:<g:textField name="login" value="${usuario.login}"  class="form-control"/></p>
		<p>Senha:<g:passwordField name="senha"  class="form-control"/></p>
		<p><g:submitButton name="save" value="Save" class="btn btn-lg btn-primary"/></p>
	</g:form>
</body>
</body>
</html>