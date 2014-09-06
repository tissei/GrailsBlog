package engenharia

class Postagem {
	String titulo
	String texto
	
	static belongsTo = [usuario:Usuario]

    static constraints = {
		titulo blank: false, maxSize: 100
		texto blank: false, type: "text", maxSize: 600
    }
}
