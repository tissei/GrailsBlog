package Engenharia

import engenharia.Postagem

class IndexController {

    def list() {
		[posts: Postagem.getAll()]
	}
}
