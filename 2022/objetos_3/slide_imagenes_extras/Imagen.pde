class Imagen {
  PImage img;
  
  Imagen(String nombre) {
    img = loadImage(nombre);
  }

  void dibujar() {
    image(img, 0, 0, width, height);
  }

}
