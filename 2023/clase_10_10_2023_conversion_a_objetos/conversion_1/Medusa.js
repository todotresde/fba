class Medusa{
  constructor(){
    this.posX = random(-4000, -300);
    this.posY = random(-50, height);
    this.velocidad = random(1,3);
    this.imagen = imagenMedusa;
    this.atrapada = false;
  }
  
  dibujar(){
    if(!this.atrapada){
      image(this.imagen, this.posX, this.posY, 50, 50);
      this.posX += this.velocidad;
    }
  }
}
