object trajeDeBruja {
	method nivelSusto() {
		return 10
	}
} 

object barba {
	var longitudDeBarba = 2
	
	method nivelSusto(){
		return longitudDeBarba * 5
	}
}

object mascaraDracula {
	const tamanio = 2
	method nivelSusto(){
		return 2 * tamanio
	}


}

object mascaraFrankenstein {
	method nivelSusto(){
		return 22 
	}
	
}

object mascaraPolitico {
	const tamanio = 2

		method nivelSusto(){
		return politico.promesas() * tamanio
	}
	}
object politico {
	method promesas() {
		return 10
	}
}

