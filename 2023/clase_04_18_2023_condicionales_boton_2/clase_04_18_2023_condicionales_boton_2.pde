void setup() {
  size(400, 400);
}
void draw() {
  //background(200);
  stroke(0);
  line(pmouseX, pmouseY, mouseX, mouseY);
  
  //Dibujar boton
  rect(300,300,50,50);
}

void mousePressed(){
  if(mouseX>300 && mouseX < 350 && mouseY > 300 && mouseY < 350){
    background(200);
  }
}
