void dibujarCeldas(int posY){
  for(int i = 0; i < cant; i++){
    dibujarCelda(i*tam, posY);
  }
}

void dibujarCelda(int posX, int posY){
  int posCelda = floor(map(posX, 0, width, 0, cant));
  if(mousePressed && clickCelda(posX, posY)){
    celdas[posCelda] = !celdas[posCelda];
  }  
  
  if(celdas[posCelda]){ 
    fill(0);
  }else{
    fill(255);
  }
  rect(posX, posY, tam, tam);
  
}
