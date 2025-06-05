int pantalla = 1;
PImage imagenPantalla1, imagenPantalla2, imagenPantalla3;
PFont fuentePantalla1, fuentePantalla2, fuentePantalla3;

int posXTextoPantalla1, posXTextoPantalla2, posXTextoPantalla3;

void setup() {
  size(640, 480);
  cargarAssets();
  inicializarPantallas();
}

void draw() {
  if (pantalla == 1) {
    pantalla1();
  } else if (pantalla == 2) {
    pantalla2();
  } else if (pantalla == 3) {
    pantalla3();
  }
  
  calcularPantallaSiguiente();
}
