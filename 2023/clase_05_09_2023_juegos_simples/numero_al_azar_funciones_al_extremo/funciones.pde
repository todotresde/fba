void iniciarJuego(int inicio, int fin) {
  numeroAAdivinarInicio = str(inicio).charAt(0);
  numeroAAdivinarFin = str(fin).charAt(0);
  haSidoPresionado = false;
  numeroElegido = obtenerNumeroAleatorio();
}

void dibujarPantallaPrincipal() {
  fill(0);

  textSize(30);
  String mensajeAAdivinar = 
    "En que número estoy pensando del " +
    numeroAAdivinarInicio +" al " + numeroAAdivinarFin + "?";
  text(mensajeAAdivinar, 50, 50, 350, 200);

  textSize(60);
  if (!haSidoPresionado) {
    dibujarTextoAlNoPresionar();
  } else {
    dibujarTextoAlPresionar();
  }
}

void dibujarTextoAlNoPresionar() {
  fill(random(255), random(255), random(255));
  text(obtenerNumeroAleatorio(), 200, 300);
}

void dibujarTextoAlPresionar() {
  if (numeroElegido == numeroPresionado) {
    fill(0, 255, 0);
    mensaje = "Adivinaste! Era el: " + numeroElegido;
  } else {
    fill(255, 0, 0);
    mensaje = "Upps! .. Era el: " + numeroElegido;
  }

  textSize(30);
  text(mensaje, 100, 300);
}

void teclaPresionada() {
  if (haSidoPresionado && key == 'r') {
    numeroElegido = obtenerNumeroAleatorio();
    haSidoPresionado = false;
  } else if (keyCode >= numeroAAdivinarInicio && keyCode <=numeroAAdivinarFin) {
    numeroPresionado = char(keyCode);
    haSidoPresionado = true;
  }
}

char obtenerNumeroAleatorio(){
  return char(floor(random(numeroAAdivinarInicio, numeroAAdivinarFin)));
}
