package engenharia

class Usuario {
	String nome
	String login
	String senha

    static constraints = {
		nome blank: false
		login blank: false
		senha blank: false
    }
}
