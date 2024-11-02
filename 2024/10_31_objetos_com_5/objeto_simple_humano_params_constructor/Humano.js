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
      rect(this.posX,this.posY,100,100);
      fill(0);
      text(this.nombre, this.posX + 20, this.posY + 50);
    }else{
      fill(0,255,0);
      ellipse(this.posX,this.posY,100,100);
      fill(0);
      text(this.nombre, this.posX - 30, this.posY);
    }
  }
}
