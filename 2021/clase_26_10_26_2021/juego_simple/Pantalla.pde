class Pantalla{

  String mensaje;
  
  Pantalla(String mensaje){
     this.mensaje = mensaje;
  }
  
  void dibujar(){
    textSize(30);
    textAlign(CENTER);
    text(this.mensaje, width/2, height/2);
  }
}
