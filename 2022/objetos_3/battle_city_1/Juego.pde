class Juego{
  int cantParedes = 13;
  Tanque tanque;
  Pared [][] paredes = new Pared [cantParedes][cantParedes]; 
  
  Juego(){
    tanque = new Tanque();
    generarParedes();
  }
  
  void dibujar(){
    for(int i=0; i< cantParedes; i++){
      for(int j=0; j< cantParedes; j++){
        if(paredes[i][j] != null){
          paredes[i][j].dibujar();
        }
      }
    }
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
}
