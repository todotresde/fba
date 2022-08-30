class Jugador {

  int posX;
  int posY;
  int tam = 20;
  color miColor;
  int dir;
  boolean movimiento = true;
  boolean mancha = false;

  Jugador() {
    posX = round(random(tam, width - tam));
    posY = round(random(tam, height - tam));
    dir = floor(random(0, 4));
    miColor = color(100);
  }

  void dibujar() {
    fill(miColor);
    if(mancha){
      fill(255,0,0);
    }
    ellipse(posX, posY, tam, tam);
    calcularPosicion();
  }


  void arrancarOParar() {
    if(movimiento){
      miColor = color(255, 0, 0);
      movimiento = false;
    }else{
      miColor = color(100);
      movimiento = true;
    }
  }

  void calcularPosicion() {
    if (movimiento) {
      if (dir == 0) {
        posX++;
        posY++;
        if (posX+tam/2>width) {
          dir = 1;
        }else if(posY+tam/2>height){
          dir = 3;
        }
      } else if (dir == 1) {
        posX--;
        posY++;
        if (posX-tam/2<0) {
          dir = 0;
        }else if (posY+tam/2>height){
          dir = 2;
        }
      } else if (dir == 2) {
        posX--;
        posY--;
        if (posX-tam/2<0) {
          dir = 3;
        }else if(posY-tam/2<0){
          dir = 1;
        }
      } else if (dir == 3) {
        posX++;
        posY--;
        if (posX+tam/2>width) {
          dir = 2;
        }else if (posY-tam/2<0){
          dir = 0;
        }
      }
    }
  }
  
  void cambiarDireccion(){
    if(dir == 0){
      dir = 1;
    }else if(dir == 1){
      dir = 0;
    }else if(dir == 2){
      dir = 3;
    }else if(dir == 3){
      dir = 2;
    }
  }
  
  void esMancha(){
    mancha = true;
  }
  
  void noEsMancha(){
    mancha = false;
  }
}
