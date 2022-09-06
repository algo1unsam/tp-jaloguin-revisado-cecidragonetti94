import elementos.*

object macaria {
	var nivelIra= 10
	var disfraces = []
	var caramelos = 0

	method capacidadSusto() =nivelIra + disfraces.sum({disfraz => disfraz.nivelSusto()})
	
	method disfrazar(disfraz){
		disfraces.add(disfraz)
	}
	method quitarDisfraz(disfraz){
		disfraces.remove(disfraz)
	}
	method recibirCaramelos(caramelo){
		caramelos += caramelo - caramelo.div(4)
	}
	method caramelos()= caramelos
	
	method elementoMenosEfectivo() =  disfraces.min({ disfraz => disfraz.nivelSusto() })

	method dejarDeUsarMenosEfectivo(){
		self.quitarDisfraz(self.elementoMenosEfectivo())
	}
		method disfraces() = disfraces
	
}

object pancracio {

	var grito = 'buuuu'
	var unicoDisfraz = mascaraDracula
	var caramelos = 0

	method disfrazar(disfraz){
	unicoDisfraz = disfraz
	}
	method quitarDisfraz(disfraz){
		grito += 'uu'
	}
		method capacidadSusto()= grito.size() - 1 + unicoDisfraz.nivelSusto()
	
	method recibirCaramelos(caramelo){
		caramelos += caramelo
	}
	method caramelos() = caramelos

	method disfraces() = [unicoDisfraz]
	
}

// El chico inventado .

object pedro {
	var disfraces = [ ]
	method disfrazar(disfraz){
		disfraces.add(disfraz)
	}
	method quitarDisfraz(disfraz){
		disfraces.remove(disfraz)
	}
	method capacidadSusto() = disfraces.count({ disfraz => disfraz.nivelSusto()>20 })
	
	method recibirCaramelos(caramelo){}
	
		method caramelos() = 0
	
	method disfraces() = disfraces 
	
	
	method tirarTodosLosDisfraces(){
		disfraces.clear()
	}
}

