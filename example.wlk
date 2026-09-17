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

method definirCajones(cantidad) { cajones = cantidad }

//
method recorrer(kilometros, velocidad) 
{
  kilometraje = kilometraje + kilometros
}
}

object scanion5000 {
  const liquido = 5000
  var densidad = 0

method pesoCargado() { return liquido * densidad}
method velocidad() { return 140 }
method definirDensidad(densidadLiquido) { densidad = densidadLiquido }

//
method recorrer(kilometros, velocidad) 
{ 
  //Es igual 
}
}

object cerealitas {
  var deteriodo = 0
  var carga = 0

method velocidad () 
{
  if(deteriodo<10) return 40 else return 60 - deteriodo} 

method realizarViaje(cargaSolicitada) 
{ 
  carga = cargaSolicitada
  deteriodo = deteriodo + 1
 }


// asumo que el la carga es el peso
method pesoCargado() {return carga }

//
 method recorrer(kilometros, velocidad) 
{
if(velocidad > 45)
{
  deteriodo = deteriodo + (velocidad - 45 )
}
}

}

object rutatlantica {
  
  const kilometros = 400
  
  method peaje(camion) = 7000 + (camion.pesoCargado() / 1000) * 100  
  
  method recorrido(camion, velocidad)
  {
    var velocidadPermitida = velocidad
    if (velocidadPermitida > 75) 
    {
      velocidadPermitida = 75
    }
    camion.recorrer(kilometros, velocidadPermitida)
  } 

}
