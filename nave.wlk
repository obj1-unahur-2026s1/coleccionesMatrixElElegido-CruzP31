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
}
