import armas.*

object castillo {
	var nivelDeDefensa = 150
	method altura() = 20
	method recibirAtaque(unValor){
		nivelDeDefensa -= 0.max(nivelDeDefensa - unValor)
	}
	method nivelDeDefensa()= nivelDeDefensa
	method recibirElTrabajo(){
		nivelDeDefensa = 200.min(nivelDeDefensa + 20)
		}
				
	method otorgarValor() = nivelDeDefensa / 5
	
}

object aurora {
	var estaViva = true
	method altura() = 1
	method estaViva() = estaViva 
	method recibirAtaque(unValor){
		estaViva = not (unValor >= 10) 
	}
	method recibirElTrabajo(){}
	
	method otorgarValor() = 15
}

object tipa {
	
	var altura = 8
	method altura() = altura
	method recibirAtaque(){}
	method recibirElTrabajo(){
		altura += 1
	}
		}
	method otorgarValor() = altura * 2
}