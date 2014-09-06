<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title><g:layoutTitle default="Grails"/></title>

    <!-- Bootstrap core CSS -->
    <asset:stylesheet href="bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <asset:javascript src="bootstrap.min.js"/>

    <!-- Custom styles for this template -->

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="assets/js/ie-emulation-modes-warning.js"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="assets/js/ie10-viewport-bug-workaround.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
    	.starter-template{
    		margin-top: 20px;
    	}
    </style>
    <g:layoutHead/>
  </head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="${createLink(controller: "Index", action: "list")}">Grails Blog</a>
          
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
         	<g:if test="${session.userId != null}">
         		<g:if test="${controllerName != 'index'}">
		            <li><a href="${createLink(action: "index")}">Listar</a></li>
		            <li><a href="${createLink(action: "create")}">Novo</a></li>
		        </g:if>
	            <li><a href="#">${session.nome}</a></li>
	            <li><a href="${createLink(controller: "Authentication", action: "logout")}">Sair</a></li>
            </g:if>
            <g:else>
	          <g:form name="login" url="[action:'authenticate', controller:'Authentication']" class="navbar-form navbar-right" role="form">
				<div class="form-group">
					<g:textField name="login" placeholder="Login"  class="form-control"/>
				</div>
				<div class="form-group">
					<g:passwordField name="senha" placeholder="Senha"  class="form-control"/>
				</div>
				<div class="form-group">
					<g:submitButton name="entrar" value="Entrar" class="btn btn-lg btn-primary"/>
				</div>
			</g:form>
            </g:else>
          </ul>
        </div>
      </div>
    </div>
    
  	<hr/>
      <div class="container">

      <div class="starter-template">
      <div class="row">
      	<g:if test="${session.userId != null}">
	      	<div class="col-md-2 sidebar">
	      		<div class="nav nav-sidebar">
		          	<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
		          		<g:if test="${c.logicalPropertyName != "assets" && c.logicalPropertyName != "dbdoc" && c.logicalPropertyName != "authentication" && c.logicalPropertyName != "index"}">
							<li><a href="${createLink(controller: "${c.logicalPropertyName}")}" class="list-group-item">${c.logicalPropertyName}</a></li>
						</g:if>
					</g:each>
	         	</div>
	      	</div>
      	</g:if>
 		 <div class="col-md-10"><g:layoutBody/></div>
  	  </div>

    </div><!-- /.container -->

  </body>
</html>