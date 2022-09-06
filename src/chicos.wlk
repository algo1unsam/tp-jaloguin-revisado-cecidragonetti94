import elementos.*

object macaria {
	var nivelIra= 10
	var disfraces = []
	var caramelos = 0

	method capacidadSusto(){
		 return nivelIra + disfraces.sum({disfraz => disfraz.nivelSusto()})
	}
	method disfrazar(disfraz){
		disfraces.add(disfraz)
	}
	method quitarDisfraz(disfraz){
		disfraces.remove(disfraz)
	}
	method recibirCaramelos(caramelo){
		caramelos += caramelo - caramelo.div(4)
	}
	method caramelos(){
		return caramelos
	}
	method elementoMenosEfectivo() {
		return disfraces.min({ disfraz => disfraz.nivelSusto() })
	}
	method dejarDeUsarMenosEfectivo(){
		self.quitarDisfraz(self.elementoMenosEfectivo())
	}
		method disfraces() {
		return disfraces
	}
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
		method capacidadSusto(){
		 return grito.size() - 1 + unicoDisfraz.nivelSusto()
	}
	method recibirCaramelos(caramelo){
		caramelos += caramelo
	}
	method caramelos() {
		return caramelos
	}
	method disfraces() {
		return [unicoDisfraz]
	}
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
	method capacidadSusto(){
		return disfraces.count({ disfraz => disfraz.nivelSusto()>20 })
	}
	method recibirCaramelos(caramelo){}
		method caramelos() {
		return 0
	}
	method disfraces() {
		return disfraces 
	}
	
	method tirarTodosLosDisfraces(){
		disfraces.clear()
	}
}

