import pasajeros.*

object nave {
  const property pasajeros = [neo,morfeo,trinity] // equivalente a new List()
  method subirALaNave(unPasajero) {
    if(self.estaEnLaNave(unPasajero)){
        self.error("El pasajero ya esta en la nave")
    }
    pasajeros.add(unPasajero)
  }
  method bajarseDeLaNave(unPasajero) {
    if(!self.estaEnLaNave(unPasajero)){
        self.error("El pasajero no esta en la nave")
    }
    pasajeros.remove(unPasajero)
  }
  method estaEnLaNave(unPasajero) {
    return pasajeros.contains(unPasajero)
  }
  method cantidadDePasajeros() {
    return pasajeros.size()
  }
  method elPasajeroConMayorVitalidad() {
    return pasajeros.max({p => p.vitalidad()})
  }
  method elPasajeroConMenorVitalidad() {
    return pasajeros.mix({p => p.vitalidad()})
  }
  method estaElElegido(){
    return pasajeros.any({p => p.estaElElegido()})
  }
  method chocar() {
    pasajeros.forEach({p => p.saltar() p.bajarseDeLaNave()})
  }
  method chocarFacil() {
    pasajeros.forEach({p => p.saltar()})
    pasajeros.clear()
  }
  method removerAlgunos(unaLista) {
    pasajeros.removeAll(unaLista)
  }
  method estaEquilibrado() {
    return self.elPasajeroConMayorVitalidad().vitalidad()<= self.elPasajeroConMenorVitalidad().vitalidad() *2
  }
  method saltan(unaLista) {
    unaLista.forEach({p=> p.saltar()})    
  }
  method acelerar() {
    self.saltan(self.noElegidos())   
  }
  method noElegidos(){
    return pasajeros.filter({p => not p.estaElElegido()})
  }
  method vitalidadesDePasajeros() {
    return pasajeros.map({p => p.vitalidad()})
  }
  method ordenarDeMenorVitalidadAMayor() {
    pasajeros.sortBy({p1,p2 => p1.vitalidad() < p2.vitalidad() })
  }
}
