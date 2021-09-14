
void dibujarBoton(int posX, int posY){
  int ancho = 100;
  int alto = 50;
  
  fill(255);
  if(mouseX > posX && mouseX < posX + ancho && mouseY > posY && mouseY < posY + alto){
    fill(190);
    
    if(mousePressed){
      fill(255,0,0);
    }
  }
  
  rect(posX, posY, ancho, alto);
  
}
