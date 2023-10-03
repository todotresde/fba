class Personaje{
  constructor(posX, posY, miColor){
    this.posX = posX;
    this.posY = posY;
    this.miColor = miColor;
    this.seleccionado = false;
  }
  
  dibujar(){
    if(this.seleccionado){
      fill(this.miColor);
    }else{
      fill(200);
    }
    ellipse(this.posX, this.posY, 30, 30);
  }
  
  mover(){
    if(this.seleccionado){
      if(keyCode == LEFT_ARROW){
        this.posX -= 10;
      }else if(keyCode == RIGHT_ARROW){
        this.posX += 10;
      }
    }
  }
  
  click(){
    if(dist(this.posX, this.posY, mouseX, mouseY) < 15){
      this.seleccionado = true;
    }
  }
}
