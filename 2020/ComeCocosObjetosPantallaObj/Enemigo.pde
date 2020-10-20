class Enemigo{
  int posX, posY, velocidad, tam;
  PImage imagen;
  int tipo;
  
  Enemigo(int p_posX, int p_posY, int p_tam, int p_tipo){
    tipo = p_tipo;
    posX = p_posX;
    posY = p_posY;
    velocidad = 1;
    tam = p_tam;
    if(tipo == 0){
      imagen = loadImage("enemigo0.jpg");
    }else if(tipo == 1){
      imagen = loadImage("enemigo1.jpg");
    }else if(tipo == 2){
      imagen = loadImage("enemigo2.jpg");
    }
  }
  
  void dibujar(){
    fill(255,0,0);
    //ellipse(posX, posY, tam, tam);
    image(imagen, posX, posY, tam, tam);
    posY += velocidad;
  }
  
  void moverEnY(int p_posY){
    posY = p_posY;
  }
  
  boolean saleDeLaPantalla(){
    return posY > height;
  }
}
