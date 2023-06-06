void dibujarBoton(){
  ellipse(200,200,50,50);
}

boolean hiceClickEnElBoton(){
  if(mousePressed && dist(mouseX, mouseY, 200, 200) < 25){
    return true;
  }
  return false;
}

void dibujarCuadrados(int cant){
  for(int i=0; i<cant; i++){
    rect(i*50, 100, 50, 50);
  }
}
