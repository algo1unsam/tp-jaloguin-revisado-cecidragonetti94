import chicos.*
import elementos.*
import adultos.*

object legionDelTerror {
	var integrantes = [ ]
		method capacidadSusto() =  integrantes.sum({ chico => chico.capacidadSusto() })
	
		method lider() =  integrantes.max({ chico => chico.capacidadSusto() })
	

		method caramelos() = integrantes.sum({ chico => chico.caramelos() })
	
	
		method recibirCaramelos(cantidad) {
			self.lider().recibirCaramelos(cantidad)
	}
	
		method agregarIntegrantes(nuevos) {
			integrantes.addAll(nuevos)
	}
		method todosLosDisfraces() = integrantes.map({ chico => chico.disfraces().asSet() }).flatten()
	
		method disfracesRepetidos() = self.todosLosDisfraces().filter({ x => self.todosLosDisfraces().occurrencesOf(x) > 1 })
	
		method normaSinRepetidos() {
			self.disfracesRepetidos().forEach({ disfraz => self.sacarseloATodos(disfraz) })
	}
		method sacarseloATodos(disfraz) {
			integrantes.forEach({ x => x.quitarDisfraz(disfraz) })
	}	
	
	

}
object barrio{
	var chicos = []
	method chicosConMasCaramelos(cantidad) {
		return chicos 
			.sortedBy({ x, y => x.caramelos() > y.caramelos()})
			.take(cantidad)
	}
	
	method chicos(nuevos) {
		chicos = nuevos
	}

	method algunoMuyAsustador() = chicos.any({ chico => chico.capacidadSusto() > 42 })
	
	
}

