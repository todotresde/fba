class Jugador {

  int posX;
  int posY;
  int tam = 20;
  color miColor;
  int dir;
  boolean movimiento = true;

  Jugador() {
    posX = round(random(tam, width - tam));
    posY = round(random(tam, height - tam));
    dir = floor(random(0, 4));
    miColor = color(100);
  }

  void dibujar() {
    fill(miColor);
    ellipse(posX, posY, tam, tam);
    calcularPosicion();
  }

  void click() {
    if (dist(mouseX, mouseY, posX, posY) < tam) {
      arrancarODetenerse();
    }
  }

  void arrancarODetenerse() {
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
        if (posX+tam/2>width) {
          dir = 2;
        }
      } else if (dir == 1) {
        posY++;
        if (posY+tam/2>height) {
          dir = 3;
        }
      } else if (dir == 2) {
        posX--;
        if (posX-tam/2<0) {
          dir = 0;
        }
      } else if (dir == 3) {
        posY--;
        if (posY-tam/2<0) {
          dir = 1;
        }
      }
    }
  }
}
