void dibujarJuego() {
  if (estoyJugando()) {
    aJugar();
  }else if(perdi()){
    perdiste();
  }else if(gane()){
    ganaste();
  }
}

boolean estoyJugando() {
  return estado == 0;
}

boolean perdi(){
  return estado == 2;
}

boolean gane(){
  return estado == 1;
}

void perdiste(){
  background(200);
  text("PERDISTE!!!!", width/2, height/2);
}

void ganaste(){
  background(200);
  text("GANASTE!!!!", width/2, height/2);
}

void aJugar() {
  dibujarPantalla(imagenAleatoria, textoAleatorio);
}

void dibujarPantalla(int imagenAleatoria, int textoAleatorio) {
  image(imagenes[imagenAleatoria], 0, 0, width, height);
  textAlign(CENTER);
  textSize(40);
  text(textos[textoAleatorio], width/2, height/2);
  println(imagenAleatoria, textoAleatorio);
}

void matchOK() {
  if (imagenAleatoria == textoAleatorio) {
    estado = 1;
  } else {
    estado = 2;
  }
}

void matchKO() {
  if (imagenAleatoria != textoAleatorio) {
    estado = 1;
  } else {
    estado = 2;
  }
}
