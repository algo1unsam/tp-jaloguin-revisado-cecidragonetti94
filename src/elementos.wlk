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
	var tamanio = 2
	method nivelSusto(promesas){
		return 2 * tamanio
	}


}

object mascaraFrankenstein {
	var tamanio = 2
		method nivelSusto(promesas){
		return 22 * tamanio
	}
	
}

object mascaraPolitico {
	var tamanio = 2
		method nivelSusto(promesas){
		return promesas * tamanio
	}
	}

