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
    method prepararViaje() {
    	self.cambiarColorDeBaliza("verde")
    	self.ponerseParaleloAlSol()
    }   
}


class NavesPasajeros inherits NaveEspacial {
    var property pasajeros
    var  comida = 0
    var bebida = 0
    
    method cargarComida(cantidad) { comida += cantidad }
    method descargarComida(cantidad) {
    	comida -= cantidad
    	comida = comida.max(0)    	
    }
    method cargarBebida(cantidad) { bebida += cantidad }
    method descargarBebida(cantidad) {
    	bebida -= cantidad
    	bebida = bebida.max(0)    	
    }
    method prepararViaje() {
    	self.cargarComida(4*self.pasajeros())
    	self.cargarBebida(6*self.pasajeros())
    	self.acercarseUnPocoAlSol()
    }
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
    method emitirMensaje(mensaje) { mensajes.add(mensaje) }
    method mensajesEmitidos() { return mensajes }
    method primerMensajeEmitido() { return mensajes.first() }
    method ultimoMensajeEmitido() { return mensajes.last() }
    method esEscueta() { return mensajes.all({ m => m.lenght()<30 }) }
    method emitioMensaje(mensaje) { return mensajes.find(mensaje) }
    method prepararViaje() {
    	self.ponerseVisible()
    	self.desplegarMisiles()
    	self.acelerar(15000)
    	self.emitirMensaje("Saliendo en misión")
    }
}

