class Persona{
  int posX, posY, tam;
  String nombre;
  Mascota mascota;
  Correa correa;
  
  Persona(){
    posX = round(random(100, 300));
    posY = round(random(100, 300));
    tam = round(random(20, 50));
    nombre = "";
  }
  
  void dibujar(){
    fill(0);
    text(nombre, posX - tam/2, posY - tam/2);
    fill(255);
    ellipse(posX, posY, tam, tam);
    
    if(mascota != null){
      mascota.dibujar();
      if(correa != null){
        correa.dibujar();
      }
    }
  }
  
  void teLlamas(String p_nombre){
    nombre = p_nombre;
  }
  
  void olvidateDeTodo(){
    nombre = "";
  }
  
  void regalarMascota(Mascota p_mascota){
    mascota = p_mascota;
  }
  
  void poneleCorreaATuMascota(){
    if(mascota != null){
      correa = new Correa(posX, posY, mascota.posX, mascota.posY);
    }else{
      println("Esta persona no posee Mascota");
    }
  }
}
