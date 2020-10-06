class Contador{
  int contador, posX, posY;
  
  Contador(int p_posX, int p_posY){
    contador = 0;
    posX = p_posX;
    posY = p_posY;
  }
  
  void dibujar(){
    textSize(20);
    fill(255,0,0);
    text("Contador:"+ contador, posX, posY);
  }
  
  void incrementar(){
    contador++;
  }
}
