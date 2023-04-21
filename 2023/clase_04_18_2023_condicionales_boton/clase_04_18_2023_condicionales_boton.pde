void setup() {
  size(400, 400);
}
void draw() {
  //background(200);
  stroke(0);
  line(pmouseX, pmouseY, mouseX, mouseY);
  
  //Dibujar boton
  ellipse(300,300,50,50);
}

void mousePressed(){
  if(dist(mouseX, mouseY, 300,300) < 25){
    background(200);
  }
}
