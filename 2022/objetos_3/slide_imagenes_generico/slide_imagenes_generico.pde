Slide slide;

void setup() {
  size(400, 400);
  //String [] nombresDeImagenes = new String [10];  
  String [] nombresDeImagenes = {"0.png", "1.png", "2.png", "miimagen.jpg"};
  slide = new Slide(nombresDeImagenes);
}

void draw() {
  background(200);
  slide.dibujar();
}

void keyPressed() {
  slide.teclaPresionada(keyCode);
}

void mouseClicked() {
  slide.mostrarSiguienteImagen();
}
