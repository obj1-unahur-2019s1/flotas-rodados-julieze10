class Corsa {
	var property color
	method capacidad(){return 4}
	method velocidadMaxima()= 150
	method peso(){return 1300}	
	
}
object renaultKwid{
	var property peso = 1200
	var property tanqueAdicional = false
	
	method capacidad(){
		return if(tanqueAdicional){return 4} else {return 3}
	}
	method velocidadMaxima(){
		return if(tanqueAdicional){return 110} else {return 120}
	}
	method peso(){
		return if(tanqueAdicional){return peso} else {return 150}
	}
	method color(){return "azul"}
}

object trafic {
	var property interior = comodo
	var property motor = pulenta
	 
	method capacidad(){return interior.capacidad()}
	method velocidadMaxima(){return motor.velocidadMaxima()}
	method peso(){return 4000 + interior.peso() + motor.peso()}
	method color(){return "blanco"}
}

object comodo{
	method capacidad(){return 5}
	method peso(){return 700}
}
object popular{
	method capacidad(){return 12}
	method peso(){return 1000}
}
object pulenta{
	method peso(){return 800}
	method velocidadMaxima(){return 130}
}
object bataton{
	method peso(){return 500}
	method velocidadMaxima(){return 80}
}