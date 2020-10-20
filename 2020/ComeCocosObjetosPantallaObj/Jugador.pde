class Jugador{
  int posX, posY, tam;
  
  Jugador(int p_tam, int p_posX, int p_posY){
    tam = p_tam;
    posX = p_posX;
    posY = p_posY-tam;
  }
  
  void dibujar(){
    fill(0,0,255);
    rect(posX, posY, tam, tam);
  }
  
  void teclaPresionada(){
    if(keyCode == LEFT){
      posX = posX - tam;
    }else if(keyCode == RIGHT){
      posX = posX + tam;
    }
  }
  
  boolean chocaCon(Enemigo enemigo){
    if(dist(posX, posY, enemigo.posX, enemigo.posY) <= tam/2){
      return true;
    }
    return false;
  }
}
