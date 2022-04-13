
import armas.*

object luisa {
	var jugadorActivo
	method jugadorActivo(unJugador){
		jugadorActivo = unJugador
		}
	method 	jugadorActivo() = jugadorActivo
		
	
	}
}


object floki {
	var arma = ballesta
	method encontrar(elemento){
		if (arma.estaCargada())
			elemento.recibirAtaque(arma.nivelDePotencia())
		arma.usar()	
	}
	method cambiarArma(unArma){
		arma = unArma 
	}
}


object mario {
	var valorRecolectado = 0
	var ultimoElementoEncontrado   
	method encontrar(elemento){
		ultimoElementoEncontrado = elemento 
		valorRecolectado += elemento.otorgarValor()
		elemento.recibirElTrabajo()
	}
	method esFeliz(){
		return valorRecolectado >= 50 or ultimoElementoEncontrado.altura() >= 10
	method valorRecolectado() = valorRecolectado
	}
}

