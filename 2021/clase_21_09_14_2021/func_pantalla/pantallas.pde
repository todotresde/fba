void dibujarPantalla(color colorFondo, String texto, int posXBoton, int posYBoton, int pantallaSiguinte){
  background(colorFondo);
  
  fill(0);
  text(texto, 100, 100);
  
  if(dibujarBoton(posXBoton, posYBoton)){
    pantalla = pantallaSiguinte;
  }
}
