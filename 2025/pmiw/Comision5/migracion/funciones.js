function grilla(ancho, alto, eje, cant) {
  let finCuadrado = 0;
  for (let i=0; i<cant; i++) {
    let tam = calcularAncho(i, eje, ancho, cant);

    for (let j=0; j<cant; j++) {

      colorPar(i, j);
      rect(finCuadrado+400, j*alto, ancho, alto);
    }

    finCuadrado += tam;
  }
}
