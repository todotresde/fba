int estado = 1;
int contador = 0;


void setup(){
  size(400,400);
  textSize(30);
}

void draw(){
  background(200);
  
  if(estado == 1){
    fill(0);
    text("Estado 1", 100, 100);
  }else if(estado == 2){
    fill(0);
    text("Estado 2", 100, 200);
  }else if(estado == 3){
    fill(0);
    text("Estado 3", 200, 100);
  }else{
    fill(0);
    text("Estado 4", 200, 300);
  }
  
}

void keyPressed(){
  if(keyCode == LEFT){
    estado = estado - 1;
  }else if(keyCode == RIGHT){
    estado = estado + 1;
  }
}
