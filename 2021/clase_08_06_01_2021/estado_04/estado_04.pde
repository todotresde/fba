int estado = 1;
int contador = 0;
int posXEstado2, posXEstado4;

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
    ellipse(posXEstado2, 200, 50, 50);
    posXEstado2 = posXEstado2 + 1;
  }else if(estado == 3){
    fill(0);
    text("Estado 3", 200, 100);
  }else{
    fill(0);
    text("Estado 4", 200, 300);
    ellipse(posXEstado4, 200, 50, 50);
    posXEstado4 = posXEstado4 + 1;
  }
  
}

void keyPressed(){
  if(estado == 1){
    posXEstado2 = 0;
    posXEstado4 = 0;
  }else if(estado == 2){
    posXEstado2 = 0;
    posXEstado4 = 0;
  }else if(estado == 3){
    posXEstado2 = 0;
    posXEstado4 = 0;
  }else{
    posXEstado2 = 0;
    posXEstado4 = 0;
  }
  
  if(keyCode == LEFT){
    estado = estado - 1;
  }else if(keyCode == RIGHT){
    estado = estado + 1;
  }
  
  
}
