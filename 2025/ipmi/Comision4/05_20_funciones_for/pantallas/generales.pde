void cargarAssets(){
  imagenPantalla1 = loadImage("imagen1.png");
  //...
  fuentePantalla1 = loadFont("Calibri");
}

void inicializarPantallas(){
  posXTextoPantalla1 = 100;
  //..
}

void calcularPantallaSiguiente(){
  if(pantalla == 1 && contador == 300){
    pantalla++;
  }
  if(pantalla == 2 && contador == 900){
    pantalla++;
  }
  contador++;
}
