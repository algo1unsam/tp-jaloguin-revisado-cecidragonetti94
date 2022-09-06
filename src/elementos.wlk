object trajeDeBruja {
	method nivelSusto() = 10
	
} 

object barba {
	const longitudDeBarba = 2
	
	method nivelSusto(){
		return longitudDeBarba * 5
	}
}

object mascaraDracula {
	const tamanio = 2
	method nivelSusto() =  2 * tamanio
	 
}

object mascaraFrankenstein {
	method nivelSusto() = 22 
	
	
}

object mascaraPolitico {
	const tamanio = 2

		method nivelSusto()= politico.promesas() * tamanio
	
	}
object politico {
	method promesas() = 10
	
}

