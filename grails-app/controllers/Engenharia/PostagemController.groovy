package Engenharia

import engenharia.Postagem
import engenharia.Usuario

class PostagemController {

def index() { 
		[posts: Postagem.findAll()]
	}
	
	def create() {}
	
	def save() {
		if(params.id == null) {
			Postagem post = new Postagem()
			post.titulo = params.titulo
			post.texto = params.texto
			post.usuario = Usuario.get(session.userId)
			post.save(flush: true)
		} else {
			Postagem post = Postagem.get(params.id)
			post.titulo = params.titulo
			post.texto = params.texto
			post.usuario = Usuario.get(session.userId)
			post.save(flush: true)
		}
		redirect controller: "Index", action:"list"
	}
	
	def update() {
		[post: Postagem.get(params.id)]
	}
	
	def delete() {
		Postagem post = Postagem.get(params.id)
		post.delete(flush:true)
		redirect action:"index"
	}
}
