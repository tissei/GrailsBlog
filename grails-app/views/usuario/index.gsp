<html>
<head>
	<title>Usuarios</title>
	<meta name="layout" content="main"/>
</head>
<body>
	<h2>Usuarios</h2>
	<table class="table table-striped">
              <thead>
                <tr>
                  <th>ID</th>
                  <th>Nome</th>
                  <th>Login</th>
                  <th>Update</th>
                  <th>Delete</th>
                </tr>
              </thead>
              <tbody>
         	  	<g:each in="${usuarios}" var="usuario">		
	                <tr>
	                  <td>${usuario.id}</td>
	                  <td>${usuario.nome}</td>
	                  <td>${usuario.login}</td>
	                  <td>
	                  	<a href="${createLink(action: 'update', id: usuario.id)}" class="btn btn-primary" role="button">Update</a>
	                  </td>
	                  <td>
	                  	<a href="${createLink(action: 'delete', id: usuario.id)}" class="btn btn-danger" role="button">Delete</a>
	                  </td>
	                </tr>
                </g:each>
              </tbody>
    </table>
</body>
</html>