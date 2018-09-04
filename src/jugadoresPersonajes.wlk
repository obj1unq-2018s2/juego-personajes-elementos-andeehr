import armas.*
import elementos.*

object luisa {
	var property personajeActivo = noHayPersonaje
	method aparece(elemento){
		personajeActivo.encontrar(elemento)
	}
}


object floki {
	var property arma = jabalina
	
	method encontrar(elemento) {
	    if (arma.estaCargada()) {
	        elemento.recibirAtaque(arma.potencia()) 
	        arma.registrarUso()
	    }
	}
}


object mario {
	var property valorRecolectado = 0
	var ultimoElementoRecolectado = null
	var totalElementosRecolectados = 0
	
	method encontrar(elemento) {
	    valorRecolectado += elemento.valorQueOtorga()
	    elemento.recibirTrabajo()
	    ultimoElementoRecolectado = elemento
	    totalElementosRecolectados += 1
	    
	}
	method estaFeliz() = (totalElementosRecolectados >= 50) || ultimoElementoRecolectado.altura() >= 10
}


object noHayPersonaje {
	// no hace falta ponerle ningún método, es solamente para marcarle a Luisa que no tiene ningún personaje activo
}



