class Personaje{
  constructor(){
    this.posX = random(50,width-50);
    this.posY = random(50,height-50);
    this.miColor = color(random(255),random(255),random(255));
    this.direccionX = (random(100)>50) ? 1 : -1;
    /*
    if(random(100)>50){ 
      this.direccion = 1;
    }else{
      this.direccion = -1;
    }
    */
  }
  
  dibujar(){
    fill(this.miColor);
    ellipse(this.posX, this.posY, 50, 50);
    this.mover();
  }
  
  mover(){
    if(this.direccionX == 1){
      this.posX++;
    }else{
      this.posX--;
    }
    this.cambiarDirecion();
  }
  
  cambiarDirecion(){
    if(this.posX > width-25 || this.posX < 25){
      this.direccionX = this.direccionX * -1;
    }
  }
  
  cambiarColor(){
    this.miColor = color(0);
  }
  
  cambiarColorSiHiceClick(){
    if(dist(this.posX, this.posY, mouseX, mouseY)<25){
      this.cambiarColor();
    }
  }
}
