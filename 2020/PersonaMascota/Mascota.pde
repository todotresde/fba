class Mascota{
  int posX, posY, tam;
  String nombre;
  
  Mascota(){
    posX = round(random(100, 300));
    posY = round(random(100, 300));
    tam = 10;
    nombre = "";
  }
  
  Mascota(String p_nombre){
    posX = round(random(100, 300));
    posY = round(random(100, 300));
    tam = 10;
    nombre = p_nombre;
  }
  
  void dibujar(){
    fill(0);
    text(nombre, posX - tam/2, posY - tam/2);
    fill(0,255,0);
    rect(posX, posY, tam, tam);
  }
  
  void teLlamas(String p_nombre){
    nombre = p_nombre;
  }
}
