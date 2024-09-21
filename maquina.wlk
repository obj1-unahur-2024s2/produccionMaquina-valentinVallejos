

  object maquina {
    const property produccion = [43,18,49,62,33,39]

  method agragarProuccion(unaProduccion) {produccion.add(unaProduccion)}

    method algunDiaSeProdujo(cantidad) = produccion.contains(cantidad)

    method maximoValorDeProduccion() = produccion.max()

    method valoresDeProduccionPares() = produccion.filter({x => x.even()}) 

    method produccionEsAcotada(n1,n2) = produccion.all({x => x.between(n1, n2)})

    method produccionesSuperioresA(cuanto) = produccion.filter({x=>x > cuanto})

    method produccionesSumando(n) = produccion.map({x=>x+n})

    method totalProducido() = produccion.sum()

    method ultimoValorDeProduccion() = produccion.last()

    method cantidadProduccionesMayorALaPrimera() = produccion.count({x=>x > produccion.first()})

    method incendio() {produccion.clear()}

    method promedioDeProduccion() = produccion.sum()/produccion.size()

    method editarProduccion(cantVieja,cantNueva) {
      produccion.remove(cantVieja)
      produccion.add(cantNueva)
    }
  }
  