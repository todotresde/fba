class Pantalla {
  PImage imagenFondo;
  
  Pantalla(String nombreImagenFondo) {
    imagenFondo = loadImage(nombreImagenFondo);
  }

  void dibujar() {
    image(imagenFondo, 0, 0, width, height);
  }
  
  void mousePresionado() {
  }

}
