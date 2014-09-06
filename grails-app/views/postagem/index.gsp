<html>
<head>
	<title>Postagens</title>
	<meta name="layout" content="main"/>
</head>
<body>
	<h2>Postagens</h2>
	<table class="table table-striped">
              <thead>
                <tr>
                  <th>ID</th>
                  <th>Titulo</th>
                  <th>Autor</th>
                  <th>Update</th>
                  <th>Delete</th>
                </tr>
              </thead>
              <tbody>
         	  	<g:each in="${posts}" var="post">		
	                <tr>
	                  <td>${post.id}</td>
	                  <td>${post.titulo}</td>
	                  <td>${post.usuario.nome}</td>
	                  <td>
	                  	<a href="${createLink(action: 'update', id: post.id)}" class="btn btn-primary" role="button">Update</a>
	                  </td>
	                  <td>
	                  	<a href="${createLink(action: 'delete', id: post.id)}" class="btn btn-danger" role="button">Delete</a>
	                  </td>
	                </tr>
                </g:each>
              </tbody>
    </table>
</body>
</html>