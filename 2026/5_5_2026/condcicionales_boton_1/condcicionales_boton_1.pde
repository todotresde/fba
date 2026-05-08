// AND = && => TRUE && TRUE => TRUE

int posX = 200;
int tam = 100;
color colorBoton = color(200);

void setup(){
  size(400,400);
}

void draw(){
  background(255);
  
  fill(colorBoton);
  rect(posX,200,tam,50);

  if(mouseX > posX && mouseX < posX + tam){
    colorBoton = color(255,0,0);
  }else{
    colorBoton = color(200);
  }
}
