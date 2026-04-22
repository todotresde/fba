int posX = 200;
int tam = 50;
int velocidad = 10;
int direccion = velocidad;

void setup(){
  size(400,400);
}

void draw(){
  background(200);
  // Mitad izquerda, ellipse sigue al mouse
  // Mitad derecha, rect sigue al mouse
  if(mouseX < width/2){
    ellipse(mouseX, mouseY, tam, tam);
  }else{
    rectMode(CENTER);
    rect(mouseX, mouseY, tam, tam);
  }
}
