object verdurin
{
var cajones = 10 
var kilometraje = 700000

method pesoCargado() { return cajones * 50 }
method velocidad() 
{
   return 80 - (self.pesoCargado() / 500) 
}

method kilometraje() { return kilometraje}


}

object scanion5000 {
  const liquido = 5000
  var densidad = 0

method pesoCargado() { return liquido * densidad}
method velocidad() { return 140 }
method definirDensidad(densidadLiquido) { densidad = densidadLiquido }
}


object cerealitas {
  var deteriodo = 0

method incrementarDeteriodo(veces) { deteriodo + veces }
method velocidad () {if(deteriodo<10) 40 else 60} 
method pesoCargado() {}

}

object rutatlantica {
  
  const kilometros = 400
  method peaje(camion) = 7000 + (100 * (camion.pesoCargado() / 1000) )
  method controlarVelocidad(camion) {if (camion.velocidad() > 75) camion.velocidad(75) else camion.velocidad() } 
  method name(cerealero) { cerealero.incrementarDeteriodo((kilometros/ cerealero.velocidad()))}
}
