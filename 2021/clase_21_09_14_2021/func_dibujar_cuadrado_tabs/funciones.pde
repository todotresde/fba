
void dibujarCuadrado(int posX, int posY, int ancho, int alto){
  if(posX > 100){
    fill(255,0,0);
  }else{
    fill(0);
  }
  rect(posX, posY, ancho, alto);
}
