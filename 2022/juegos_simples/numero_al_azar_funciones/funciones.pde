void iniciarJuego() {
  haSidoPresionado = false;
  numeroElegido = char(floor(random(48, 57)));
}

void dibujarPantallaPrincipal() {
  fill(0);

  textSize(30);
  text("En que número estoy pensando del 0 al 9?", 50, 50, 350, 200);

  textSize(60);
  if (!haSidoPresionado) {
    dibujarTextoAlNoPresionar();
  } else {
    dibujarTextoAlPresionar();
  }
}

void dibujarTextoAlNoPresionar() {
  fill(random(255), random(255), random(255));
  text(char(floor(random(48, 57))), 200, 300);
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
    numeroElegido = char(floor(random(48, 57)));
    haSidoPresionado = false;
  } else if (keyCode >= 48 && keyCode <=57) {
    numeroPresionado = char(keyCode);
    haSidoPresionado = true;
  }
}
