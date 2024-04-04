import artefactos.*
import castilloDePiedra.*
object rolando {
	var capacidad = 2
	const property artefactos = #{}
	var hogar = castilloDePiedra
	method agarrar(artefacto){
		if (self.puedeAgregar()){
			artefactos.add(artefacto)
		}
	}
	method puedeAgregar(){
		return artefactos.size()< capacidad
	}
	method irAlHogar(){
		self.guardarArtefactosEnHogar()
		self.liberarEspacio()
		
	}
	method guardarArtefactosEnHogar(){
		hogar.guardarTodosLosArtefactos(artefactos)
	}
	method liberarEspacio(){
		artefactos.clear()
	}
	method posee(artefacto){
		return self.todasLasPoseciones().contains(artefacto)
		        
	}
	method todasLasPoseciones (){
		return artefactos.union(hogar.baul())
	}
}
