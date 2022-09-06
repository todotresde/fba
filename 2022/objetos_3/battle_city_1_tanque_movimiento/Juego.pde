class Juego{
  int cantParedes = 13;
  Tanque tanque;
  Pared [][] paredes = new Pared [cantParedes][cantParedes]; 
  
  Juego(){
    int posX = floor(map(7,0,cantParedes,0,width));
    int posY = floor(map(12,0,cantParedes,0,height));
    tanque = new Tanque(posX, posY, width/cantParedes, height/cantParedes);
    
    generarParedes();
  }
  
  void dibujar(){
    dibujarParedes();
    dibujarTanque();
  }
  
  void generarParedes(){
    for(int i=0; i< cantParedes; i++){
      for(int j=0; j< cantParedes; j++){
        if(random(0,100) < 20){
          int posX = floor(map(i,0,cantParedes,0,width));
          int posY = floor(map(j,0,cantParedes,0,height));
          
          paredes[i][j] = new Pared(posX, posY, width/cantParedes, height/cantParedes);
        }
      }
    }
  }
  
  void dibujarParedes(){
    for(int i=0; i< cantParedes; i++){
      for(int j=0; j< cantParedes; j++){
        if(paredes[i][j] != null){
          paredes[i][j].dibujar();
        }
      }
    }
  }
  
  void dibujarTanque(){
    tanque.dibujar();
  }
  
  void teclaPresionada(){
    if(keyCode == RIGHT){
      tanque.moverDerecha();
    }
    if(keyCode == LEFT){
      tanque.moverIzquierda();
    }
    if(keyCode == UP){
      tanque.moverArriba();
    }
    if(keyCode == DOWN){
      tanque.moverAbajo();
    }
  }
}
