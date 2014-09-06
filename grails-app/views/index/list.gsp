<html>
<head>
	<title>Grails Blog</title>
	<meta name="layout" content="main"/>
	<style>
		.bg-primary{
			margin-top: -5px;
			padding: 15px;
		}
		.content{
			margin-bottom: 20px;
		}
	</style>
</head>
<body>
	<h2>Postagens</h2>
	<hr/>
		<g:each in="${posts}" var="post">		
			<div class="col-md-12">
	          <h4 class="bg-primary">${post.titulo}</h4>
	          <div class="bg-primary content">
	          <p>${post.texto}</p>
	          <p style="text-align:right"><b>Autor:</b> ${post.usuario.nome}</p>
	          </div>
	        </div>
        </g:each>
</body>
</html>