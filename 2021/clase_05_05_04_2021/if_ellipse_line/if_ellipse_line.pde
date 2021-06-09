int radio = 50;

void setup(){
  size(400,400);
}

void draw(){
  background(200);
  stroke(0,0,0);
  line(width/2, 0, width/2, height);
  stroke(255,0,0);
  line(width/2 - radio, 0, width/2 - radio, height);
  if(mouseX < width/2 - radio){
    stroke(0,0,0);
    ellipse(mouseX, mouseY, radio * 2, radio * 2);
  }
  
  println(radio);
}
