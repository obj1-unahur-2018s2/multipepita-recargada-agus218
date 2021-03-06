import comidas.*

class Golondrina {
	
	var energia = 0
	method energia() { return energia }
	method comer(cosa, gramos) { energia += cosa.energiaPorGramo() * gramos }
	method volar(kms) { energia -= kms + 10 }
	
	// metodos nuevos
	method estaDebil() { return self.energia() < 50 }  
	method estaFeliz() { return self.energia().between(500, 1000) }
	method cuantoQuiereVolar() { 
		var cuanto = self.energia() / 5
		if (energia.between(300, 400)) { cuanto += 10 }
		if (energia % 20 == 0) { cuanto += 15 }
		return cuanto
	}
	method haceLoQueQuieras() { 
		if (self.estaDebil()) {
			self.comer(alpiste, 20)
		} else if (self.estaFeliz()) {
			self.volar(8)
		} 
	}
}

object prueba {
	
	var juliana = new Golondrina()
	var enriqueta = new Golondrina()
	var melina = new Golondrina()
	var tatiana = new Golondrina() 
	
	method energiaJuliana() { return juliana.energia() }
	method comerJuliana(cosa, gramos) { return juliana.comer() }
	
	method energiaEnriqueta() { return enriqueta.energia()}
	method comerEnriqueta(cosa, gramos) { return enriqueta.comer() }
	
	method energiaMelina() { return melina.energia() }
	method comerMelina(cosa, gramos) { return melina.comer() }
	
	method energiaTatiana() { return tatiana.energia() }
	method comerTatiana(cosa, gramos) { return tatiana.comer()}
	

	
	
}