int tam = 50;

void setup(){
  size(400, 400);
  textSize(30);
}

void draw(){
  background(200);
  fill(0);
  rect(0,0,width, height);
  fill(255);
  rect(100,100,200, 200);
  
  fill(255,0,0);
  ellipse(mouseX, mouseY, tam, tam);
  
  if(hayColision()){
    text("Colisión", 150, 200);
  }
}

boolean hayColision(){
  boolean bordeDerecho = dist(mouseX, mouseY, 300, mouseY) < tam/2;
  boolean bordeIzquierdo = dist(mouseX, mouseY, 100, mouseY) < tam/2;
  boolean bordeArriba = dist(mouseX, mouseY, mouseX, 100) < tam/2;
  boolean bordeAbajo = dist(mouseX, mouseY, mouseX, 300) < tam/2;
  
  return bordeDerecho || bordeIzquierdo || bordeArriba || bordeAbajo;
}
