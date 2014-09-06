<html>
<head>
	<title>Novo Post</title>
	<meta name="layout" content="main"/>
	<asset:stylesheet href="bootstrap.min.css"/>
</head>
<body>
	<g:form name="create" action="save" class="form-signin" role="form">
		<p>Titulo:<g:textField name="titulo" class="form-control"/></p>
		<p>Texto:</p>
		<p><g:textArea name="texto" class="form-control"/></p>
		<p><g:submitButton name="save" value="Save" class="btn btn-lg btn-primary"/></p>
	</g:form>
</body>
</html>