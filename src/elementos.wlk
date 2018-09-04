import armas.*
import jugadoresPersonajes.*

object castillo {
	const property altura = 20
	var property defensa = 150
	method recibirAtaque(potencia){
		defensa -= potencia
	}
	method valorQueOtorga() = defensa / 5
	method recibirTrabajo() {
		defensa = (defensa + 20).min(200)
	}
}

object aurora {
	const property altura = 1
	var property estaViva = true
	method recibirAtaque(potencia){
		if (potencia >= 10) {
			estaViva= false
		}
	}
	method valorQueOtorga() = 15
	method recibirTrabajo(){}
}

object tipa {
	var property altura = 8
	method recibirAtaque(potencia){}
	method valorQueOtorga() = altura * 2
	method recibirTrabajo(){
		altura += 1
	}
}