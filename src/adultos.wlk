import chicos.*
import legion.*
import elementos.*

object mirca {
	var tolerancia = 22

	method tolerancia(){
		return tolerancia
	}
	method seAsusta(chico){
		chico.recibirCaramelos(self.daCaramelos(chico))
			tolerancia = tolerancia - 1
	}
	method daCaramelos(){
		
		
	}

}
