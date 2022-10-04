class Tanque{
  int posX;
  int posY;
  int miColor;
  
  Tanque(int _posX){
    posX = _posX;
    posY = round(random(100, 300));
    miColor = color(255,0,0);
  }
  
  void dibujar(){
    fill(miColor);
    rect(posX, posY, 50, 50);
  }
}
