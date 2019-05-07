import Flotas.*
class Dependencia{
	var property empleados
	const flotas = []
	
	method agregarAFlotar(rodado){flotas.add(rodado)}
	method quitarDeFlota(rodado){flotas.remove(rodado)}
	method pesoTotalFlota(){return  flotas.sum({flota => flota.peso()})}
	method estaBienEquipada(){return flotas.size() >= 3 and flotas.all{flota =>
		flota.velocidadMaxima() >= 100}
	}
}