class Pantalla{
  Boton[] botones;
  PImage fondo; 
  String textoPantalla; 
  Boton boton1; 
  Boton boton2;
  
  Pantalla(PImage fondo, String textoPantalla, Boton boton1, Boton boton2){
    this.fondo = fondo;
    this.textoPantalla = textoPantalla;
    this.boton1 = boton1;
    this.boton2 = boton2;
  }
  
  void dibujar(){
    image(this.fondo,0,0,width, height);
    
    fill(0);
    text(this.textoPantalla, 50, 100);
    
    if(boton1 != null){
      boton1.dibujar();
    }
    
    if(boton2 != null){
      boton2.dibujar();
    }
  }
  
  int mouseClicked(){
    int pantallaAIr = -1;
    
    if(boton1 != null){
      pantallaAIr = boton1.mouseClicked();
    }
    
    if(boton2 != null && pantallaAIr == -1){
      pantallaAIr = boton2.mouseClicked();
    }
    
    return pantallaAIr;
  }
}
