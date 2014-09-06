import engenharia.Postagem
import engenharia.Usuario

class BootStrap {

    def init = { servletContext ->
		Usuario user = new Usuario()
		user.nome = "administrador"
		user.login = "admin"
		user.senha = "admin"
		user.save(flush:true)
		Postagem post = new Postagem()
		post.titulo = "Primeiro Post"
		post.texto = "Meu primeiro post"
		post.usuario = user
		post.save(flush: true)
    }
	
    def destroy = {
    }
}
