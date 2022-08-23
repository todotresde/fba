class Persona{
  //Atributos
  float altura;
  int edad;
  String nombre;
  color colorDePelo;
  int posX;
  int posY;
  
  //Constructor
  Persona(){
    edad = 0;
    nombre = "NN";
    posX = round(random(50,width-50));
    posY = round(random(50,height-50));
    colorDePelo = color(255,0,0);
  }
  
  //Métodos
  void dibujar(){
    fill(0);
    text(informacion(), posX, posY);
    
    fill(colorDePelo);
    line(posX, posY+50, posX, posY+100);
    line(posX, posY+100, posX+50, posY+150);
    line(posX, posY+100, posX-50, posY+150);
    ellipse(posX, posY+50, 50, 50);
  }
  
  void caminarAdelante(){
  
  }
  
  void cambiarColorDePelo(color _colorDePelo){
    colorDePelo = _colorDePelo;
  }
  
  void moverDerecha(){
    posX = posX + 10;
  }
  
  void moverIzquierda(){
    posX = posX - 10;
  }
  
  void girarDerecha(){
  }
  
  void saltar(){
  }
  
  void crecerUnAnio(){
    edad++;
  }
  
  void morir(){
    edad = 0;
  }
  
  String informacion(){
    return nombre + " - " + edad + " - " + altura;
  }
}
