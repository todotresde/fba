
boolean dibujarBoton(int posX, int posY){
  int ancho = 100;
  int alto = 50;
  boolean hiceClick = false;
  
  fill(255);
  if(mouseX > posX && mouseX < posX + ancho && mouseY > posY && mouseY < posY + alto){
    fill(190);
    
    if(mousePressed){
      fill(255,0,0);
      hiceClick = true;
    }
  }
  
  rect(posX, posY, ancho, alto);
  
  return hiceClick;
  
}
