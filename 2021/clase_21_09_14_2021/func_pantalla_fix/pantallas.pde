int dibujarPantalla(color colorFondo, String texto, int posXBoton, 
  int posYBoton, int pantallaActual, int pantallaSiguinte){
  
  background(colorFondo);
  
  fill(0);
  text(texto, 100, 100);
  
  if(dibujarBoton(posXBoton, posYBoton)){
    return pantallaSiguinte;
  }
  
  return pantallaActual;
}
