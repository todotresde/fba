int botonPosX, botonPosY;

void setup(){
  size(400,400);
  botonPosX = 400;
  botonPosY = 100;
}

void draw(){
  dibujarBoton(botonPosX, botonPosY);
  if(hiceClickEnElBoton(botonPosX, botonPosY)){
    dibujarCuadrados(5);
  }
}
