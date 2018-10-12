class NaveEspacial {
    var velocidad = 0
    var direccion = 0
    
    method acelerar(cuanto) {
        velocidad += cuanto
        velocidad = velocidad.min(100000)
    }
    method desacelerar(cuanto) {
        velocidad += cuanto
        velocidad = velocidad.max(0)
    }
    method irHaciaElSol() {    direccion = 10 }
    method escaparDelSol() { direccion = -10 }
    method alejarseUnPocoDelSol() {    
        direccion++
        direccion = direccion.min(10)
    }
    method acercarseUnPocoAlSol() {    
        direccion--
        direccion = direccion.max(-10)
    }
    method ponerseParaleloAlSol() { direccion = 0 }
    
}


class NavesBaliza inherits NaveEspacial {
    var color = "verde"
    method cambiarColorDeBaliza(colorNuevo){
        color = colorNuevo
    }
    
    
}

class NavesPasajeros inherits NaveEspacial {
    var property pasajeros
    var  comida = 0
    var bebida = 0
    
    method 
    
}

class NavesCombate inherits NaveEspacial {
    var invisible = false
    var desplegados = true
    var mensajes  = []
    
    method ponerseVisible() { invisible = false }
    method ponerseInvisible() { invisible = true }
    method estaInvisible() { return invisible }
    method desplegarMisiles() { desplegados = true }
    method replegarMisiles() { desplegados = false}
    method misilesDesplegados() { return desplegados }
    method emitirMensaje(mensaje) { return mensajes.add(mensaje) }
    method mensajesEmitidos() { return mensajes }
    method primerMensajeEmitido() { return mensajes.first() }
    method ultimoMensajeEmitido() { return mensajes.last() }
    method esEscueta() { return mensajes.all({ m => m.lenght()<30 }) }
    method emitioMensaje(mensaje) { return mensajes.find(mensaje) }
}

