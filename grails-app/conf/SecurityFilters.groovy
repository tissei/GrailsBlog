
class SecurityFilters {
	def filters = {
		loginCheck(controller: '*', action: '*') {
			before = {
				if (!session.userId && !session.nome && !actionName.equals('login') && !actionName.equals('authenticate') && !controllerName.equals("assets") && !actionName.equals("list")){
					redirect controller: 'Authentication', action:'login'
				}
			}
		}
	}
}
