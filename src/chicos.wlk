import elementos.*

object macaria {
	var property nivelIra= 10
	var disfraces = [ ]
	var caramelos = 0

	method capacidadDeSusto(){
		 return nivelIra + disfraces.sum({disfraz => disfraz.nivelSusto()})
	}
	method ponerseTraje(disfraz){
		disfraces.add(disfraz)
	}
	method dejarDeUsarTraje(disfraz){
		disfraces.remove(disfraz)
	}
}

object pancracio {
	var disfraces = [ ]

	method ponerseTraje(disfraz){
		disfraces.add(disfraz)
	}
	method dejarDeUsarTraje(disfraz){
		disfraces.remove(disfraz)
	}
}

// El chico inventado .

object pedro {
	var disfraces = [ ]
method ponerseTraje(disfraz){
		disfraces.add(disfraz)
	}
	method dejarDeUsarTraje(disfraz){
		disfraces.remove(disfraz)
	}
}

