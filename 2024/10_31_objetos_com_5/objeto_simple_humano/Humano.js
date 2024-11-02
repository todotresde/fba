class Humano {
  constructor(){
    this.altura = 1;
    this.edad = 0;
    this.nombre = "Juan";
    this.sexo = "M";
  }
  
  dibujar() {
    if(this.sexo === "M"){
      fill(255,0,0);
      rect(100,100,100,100);
    }else{
      fill(0,255,0);
      ellipse(100,100,100,100);
    }
  }
}
