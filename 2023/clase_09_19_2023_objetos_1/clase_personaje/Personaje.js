class Personaje{
  constructor(){
    this.posX = random(50,width-50);
    this.posY = random(50,height-50);
    this.miColor = color(random(255),random(255),random(255));
  }
  
  dibujar(){
    fill(this.miColor);
    ellipse(this.posX, this.posY, 50, 50);
  }
  
  cambiarColor(){
    this.miColor = color(random(255),random(255),random(255));
  }
  
  cambiarColorSiHiceClick(){
    if(dist(this.posX, this.posY, mouseX, mouseY)<25){
      this.cambiarColor();
    }
  }
}
