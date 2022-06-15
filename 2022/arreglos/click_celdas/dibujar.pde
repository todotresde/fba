void dibujarCeldas(int posY){
  for(int i = 0; i < cant; i++){
    dibujarCelda(i*tam, posY);
  }
}

void dibujarCelda(int posX, int posY){
  if(mousePressed && clickCelda(posX, posY)){
    fill(0);
  }else{
    fill(255);
  }
  rect(posX, posY, tam, tam);
  
}
