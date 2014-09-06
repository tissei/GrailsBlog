package Engenharia

import engenharia.Usuario

class AuthenticationController {

    def login() { }
	
	def authenticate() {
		Usuario user = Usuario.findByLoginAndSenha(params.login, params.senha)
		if(user){
			session.userId = user.id
			session.nome = user.nome
		}
		redirect controller: 'Postagem', action: 'index'
	}
	
	def logout() {
		session.userId = null
		session.nome = null
		redirect controller: 'Index', action: 'list'
	}
	
}
