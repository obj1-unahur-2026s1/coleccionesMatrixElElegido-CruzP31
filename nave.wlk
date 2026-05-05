import pasajeros.*

object nave {
  const pasajeros = [neo,morfeo,trinity] // equivalente a new List()
  method subirALaNave(unPasajero) {
    if(pasajeros.contains(unPasajero)){
        self.error("El pasajero ya esta en la nave")
    }
    pasajeros.add(unPasajero)
  }
  method bajarseDeLaNave(unPasajero) {
    
  }
  method estaEnLaNave() {
    return pasajeros.contains(unPasajero)
  }
}
