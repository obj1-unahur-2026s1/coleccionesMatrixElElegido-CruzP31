object neo {
  var energia =  100
  method esElElegido() {
    return true
  }
  method saltar() {
    energia = energia / 2
  }
  method vitalidad() {
    return energia / 10
  }
}
object trinity {
  method vitalidad() {
    return 0
  } 
  method esElElegido() {
    return false
  }
  method saltar() {}
}

object morfeo {
  var vitalidad = 8
  var estaCansado = false
  method esElElegido() {
    return false
  }
  method saltar() {
    estaCansado= !estaCansado
    vitalidad= 0.max(vitalidad-1)
  }
  method vitalidad() {
    return vitalidad
  }

}