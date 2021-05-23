int pantalla = 1;
boolean ganaste = false;
int numeroElegido;

void setup(){
  size(500,200);
  textSize(20);
}

void draw(){
  background(200);
  if(pantalla == 1){
    text("Qué número entre 1 y 3 estoy pensando?", 50, 100);
    text("Haz click para empezar", 50, 150);
    numeroElegido = floor(random(1,4));
  }else if(pantalla == 2){
    text("Presiona el número que crees adivinar", 50, 100);
    
  }else if(pantalla == 3){
    if(ganaste == true){
      text("Ganaste!!! Era el " + numeroElegido, 50, 100);
    }else{
      text("Perdiste!!! Era el " + numeroElegido, 50, 100);
    }
    text("Haz click para volver a empezar", 50, 150);
  }
  println(random(1,4));
}

void mouseClicked(){
  if(pantalla == 1){
    pantalla = 2;
  }else if(pantalla == 3){
    pantalla = 1;
  }
}

void keyPressed(){
  
  if(pantalla == 2){
    if(keyCode == (48 + numeroElegido)){
      ganaste = true;
    }
    pantalla = 3;
  }
}
