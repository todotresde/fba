void setup(){
  size(400,400);
}

void draw(){
  dibujarBoton();
  if(hiceClickEnElBoton() == true){
    dibujarCuadrados(5);
  }
}
