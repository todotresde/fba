int pantalla = 1;

void setup(){
  size(400,400);
  textSize(20);
}

void draw(){
  if(pantalla == 1){
    background(200);
    fill(0);
    text("Pantalla 1", 100, 100);
    
    if(dibujarBoton(250, 300)){
      pantalla = 2;
    }
  }else if(pantalla == 2){
    background(0,0,200);
    fill(0);
    text("Pantalla 2", 100, 100);
    
    if(dibujarBoton(50, 300)){
      pantalla = 1;
    }
  }
  
}
