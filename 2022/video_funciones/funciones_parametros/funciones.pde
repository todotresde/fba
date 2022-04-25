void mostrarNumeroAleatorioEsPar(int posX, int posY){
  boolean esPar = unNumeroAleatorioEsPar(50);
  
  textSize(30);
  fill(0);
  
  text("Es Par: " + esPar, posX, posY);
}

boolean unNumeroAleatorioEsPar(int cantidadRandom){
  return ((round(random(cantidadRandom))%2) == 0);
}
