import jugadoresPersonajes.*

object ballesta {
	var property municiones = 10
	var property potencia = 4
	method estaCargada() = municiones > 0
	method registrarUso(){
		municiones -= 1
	}
}

object jabalina {
	var property municiones = 1
	var property potencia = 30
	method estaCargada() = municiones > 0
	method registrarUso(){
		municiones -= 1
	}
	
}