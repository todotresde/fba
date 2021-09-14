int pantalla = 1;

void setup(){
  size(400,400);
  textSize(20);
}

void draw(){
  if(pantalla == 1){
    dibujarPantalla(color(200), "Pantalla 1", 250, 300, 2);
  }else if(pantalla == 2){
    dibujarPantalla(color(0,0,200), "Pantalla 2", 50, 300, 1);
  }
  
}
