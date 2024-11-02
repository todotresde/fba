class Humano {
  constructor(altura, edad, nombre, sexo, posX, posY){
    this.altura = altura;
    this.edad = edad;
    this.nombre = nombre;
    this.sexo = sexo;
    this.posX = posX;
    this.posY = posY;
  }
  
  dibujar() {
    textSize(20);
    if(this.sexo === "M"){
      fill(255,0,0);
      rect(this.posX,this.posY,100,this.altura+100);
      fill(0);
      text(this.nombre, this.posX + 20, this.posY + 50);
    }else{
      fill(0,255,0);
      ellipse(this.posX,this.posY,100,this.altura+100);
      fill(0);
      text(this.nombre, this.posX - 30, this.posY);
    }
  }
  
  click () {
    if(this.sexo === "M"){
      if(mouseX > this.posX && mouseX < this.posX + 100 &&
      mouseY > this.posY && mouseY < this.posY + 100){
        this.altura+=10;
      }
    }else{
      if(dist(this.posX, this.posY, mouseX, mouseY) < 50){
        this.altura-=10;
      }
    }
  }
}
