class Slide {
  int cant;
  int imagenActiva = 0;
  Imagen [] imagenes;

  Slide(String [] nombresDeImagenes) {
    cant = nombresDeImagenes.length;
    imagenes = new Imagen [cant];
    for (int i = 0; i < cant; i++) {
      imagenes[i] = new Imagen(nombresDeImagenes[i]);
    }
  }

  void dibujar() {
    imagenes[imagenActiva].dibujar();
  }

  void teclaPresionada(int keyCode) {
    if (keyCode == RIGHT) {
      mostrarSiguienteImagen();
    } else if (keyCode == LEFT) {
      mostrarSiguienteAnterior();
    }
  }

  void mostrarSiguienteImagen() {
    imagenActiva++;
    if (imagenActiva == cant) {
      imagenActiva = 0;
    }
  }

  void mostrarSiguienteAnterior() {
    imagenActiva--;
    if (imagenActiva == -1) {
      imagenActiva = cant - 1;
    }
  }
}
