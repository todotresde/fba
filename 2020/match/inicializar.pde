void inicializarJuego() {
  estado=0;
  inicializarImagenes();
  inicializarTextos();
  generarAleatorios();
}

void generarAleatorios() {
  imagenAleatoria = floor(random(0, cantImagenes));
  textoAleatorio = floor(random(0, cantTextos));
}

void inicializarImagenes() {
  for (int i=0; i<cantImagenes; i++) {
    imagenes[i] = loadImage("imagen" + i + ".jpg");
  }
}

void inicializarTextos() {
  textos[0] = "Rojo";
  textos[1] = "Verde";
  textos[2] = "Amarillo";
  textos[3] = "Azul";
  textos[4] = "Violeta";
}
