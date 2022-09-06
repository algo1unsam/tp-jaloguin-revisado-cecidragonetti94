import chicos.*
import legion.*
import elementos.*

object mirca {
	var tolerancia = 22

	method tolerancia(){
		return tolerancia
	}
	method serAsustadoPor(chicos) {
		chicos.recibirCaramelos(self.caramelosAEntregar(chicos))
		tolerancia = tolerancia - 1
	}
	method caramelosAEntregar(chicos) = (chicos.capacidadSusto() - tolerancia).max(0)
	

}
