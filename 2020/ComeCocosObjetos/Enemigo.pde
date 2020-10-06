class Enemigo{
  int posX, posY, velocidad, tam;
  
  Enemigo(int p_posX, int p_posY, int p_tam){
    posX = p_posX;
    posY = p_posY;
    velocidad = 1;
    tam = p_tam;
  }
  
  void dibujar(){
    fill(255,0,0);
    ellipse(posX, posY, tam, tam);
    posY += velocidad;
  }
  
  void moverEnY(int p_posY){
    posY = p_posY;
  }
  
  boolean saleDeLaPantalla(){
    return posY > height;
  }
}
