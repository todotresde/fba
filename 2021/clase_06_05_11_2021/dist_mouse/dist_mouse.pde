float distancia;

void setup(){
  size(400,400);
  textSize(40);
}

void draw(){
  background(200);
  distancia = dist(0,0,mouseX,mouseY);
  line(0,0,mouseX,mouseY);
  fill(0);
  text("Distancia: " + distancia, 40, 200);
}
