void dibujarBoton(int botonPosX, int botonPosY){
  ellipse(botonPosX,botonPosY,50,50);
}

boolean hiceClickEnElBoton(int botonPosX, int botonPosY){
  if(mousePressed && dist(mouseX, mouseY, botonPosX, botonPosY) < 25){
    return true;
  }
  return false;
}

void dibujarCuadrados(int cant){
  for(int i=0; i<cant; i++){
    rect(i*50, 100, 50, 50);
  }
}
