package Engenharia

import engenharia.Usuario

class UsuarioController {
	
    def index() { 
		def usuarios = Usuario.findAll()
		[usuarios: usuarios]
	}
	
	def create() {}
	
	def save() {
		if(params.id == null) {
			Usuario user = new Usuario()
			user.nome = params.nome
			user.login = params.login
			user.senha = params.senha
			user.save()
			redirect action:"index"
		} else {
			Usuario user = Usuario.get(params.id)
			user.nome = params.nome
			user.login = params.login
			user.senha = params.senha
			user.save(flush:true)
			if(user.id == session.userId){
				redirect controller: "Authentication", action:"logout"
			}else{
				redirect action:"index"
			}
		}
	}
	
	def update() {
		[usuario: Usuario.get(params.id)]
	}
	
	def delete() {
		Usuario user = Usuario.get(params.id)
		user.delete(flush:true)
		redirect action:"index"
	}
}
