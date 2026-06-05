void dibujarGrilla(){
  for (int j=0; j<10; j++) {
    dibujarLinea(j*40);
  }
}

void dibujarLinea(int posY){
  for (int i=0; i<10; i++) {
    //line(mouseX, mouseY, i*40, posY);
    float rojo = dist(mouseX, mouseY, i*40, posY);
    fill(rojo,0,0);
    rect(i*40, posY, 40, 40);
  }
}
