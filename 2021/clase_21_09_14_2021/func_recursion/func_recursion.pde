void setup(){
  size(400,400);
}

void draw(){
  dibujarCuadrado(0, 0, width, height, 0);
}

void dibujarCuadrado(int posX, int posY, int ancho, int alto, int nivel){
  int dist = 30;
  if(ancho > 0){
    rect(posX, posY, ancho, alto);
    
    if(nivel == 1){
      posX = posX + dist;
    }else if(nivel == 2){
      posX = posX + dist;
      posY = posY + dist;
    }else if(nivel == 3){
      posY = posY + dist;
    }
    nivel++;
    if(nivel == 4){
      nivel = 0;
    }
    dibujarCuadrado(posX, posY, ancho - dist, alto - dist, nivel);
  }
}
