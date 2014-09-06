<html>
<head>
	<title>Alterar Post</title>
	<meta name="layout" content="main"/>
	<asset:stylesheet href="bootstrap.min.css"/>
</head>
<body>
	<g:form name="create" action="save" class="form-signin" role="form">
		<g:hiddenField name="id" value="${post.id}" />
		<p>Titulo:<g:textField name="titulo" value="${post.titulo}" class="form-control"/></p>
		<p>Texto:</p>
		<p><g:textArea name="texto" value="${post.texto}" class="form-control"/></p>
		<p><g:submitButton name="save" value="Save" class="btn btn-lg btn-primary"/></p>
	</g:form>
</body>
</html>