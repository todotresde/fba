void dibujarRectangulos(
  int tamTotal,
  int cantidadRectangulos,
  int posX,
  int posY,
  color colorDelRectangulo
  ) {
  int diferencia = tamTotal/cantidadRectangulos;
  int tam = tamTotal;

  for (int i=0; i<cantidadRectangulos; i++) {
    if (i%2 == 0) {
      fill(colorDelRectangulo);
    } else {
      fill(255);
    }
    rect(posX, posY, tam, tam);
    tam = tam - diferencia;
  }
}

void modificarPosXPosY(int j) {
  if (j==0) {
    posX = 100;
    posY = 100;
  } else if (j==1) {
    posX = 300;
    posY = 100;
  } else if (j==2) {
    posX = 100;
    posY = 300;
  } else if (j==3) {
    posX = 300;
    posY = 300;
  }
}

boolean mouseDentroDelRectagulo(int _posX, int _posY, int _tam){
  if(mouseX > _posX && mouseX < _posX + _tam & mouseY > _posY && mouseY < _posY + _tam){
    return true;
  }
  return false;
}
