class Personaje{
  constructor(posX, posY, miColor){
    this.posX = posX;
    this.posY = posY;
    this.miColor = miColor;
    this.seleccionado = false;
    this.vida = true;
  }
  
  dibujar(){
    if(this.vida == true){
      if(this.seleccionado){
        fill(this.miColor);
      }else{
        fill(200);
      }
      ellipse(this.posX, this.posY, 30, 30);
    }
  }
  
  mover(){
    if(this.vida == true && this.seleccionado){
      if(keyCode == LEFT_ARROW){
        this.posX -= 10;
      }else if(keyCode == RIGHT_ARROW){
        this.posX += 10;
      }else if(keyCode == UP_ARROW){
        this.posY -= 10;
      }else if(keyCode == DOWN_ARROW){
        this.posY += 10;
      }
    }
  }
  
  click(){
    if(this.vida == true && dist(this.posX, this.posY, mouseX, mouseY) < 15){
      this.seleccionado = true;
    }
  }
  
  deseleccionado(){
    if(this.vida == true){
      this.seleccionado = false;
    }
  }
}
