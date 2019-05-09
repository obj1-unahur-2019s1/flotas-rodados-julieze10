import Flotas.*
class Dependencia{
	var property empleados
	const flotas = []
	
	method agregarAFlota(rodado){flotas.add(rodado)}
	method quitarDeFlota(rodado){flotas.remove(rodado)}
	method pesoTotalFlota(){return  flotas.sum({flota => flota.peso()})}
	method estaBienEquipada(){return flotas.size() >= 3 and flotas.all{flota =>
		flota.velocidadMaxima() >= 100}
	}
	method capacidadTotalEnColor(color){ return flotas.filter({flota => flota.color()== color}).sum({flota => flota.capacidad()})}
	method colorDelRodadoMasRapido(){return flotas.max({flota => flota.velocidadMaxima()}).color()}
	method capacidadFaltante(){return empleados - flotas.sum({flota => flota.capacidad()})}
	method esGrande(){return empleados >= 40 and flotas.size() >= 5}
}