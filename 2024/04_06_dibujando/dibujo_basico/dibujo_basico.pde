void setup(){
  size(400,400);
}

void draw(){
  background(65,45,203);
  /*
  line(0,0,100,100);
  line(100,100,100,200);
  line(100,200,200,200);
  */
  println(mouseX, mouseY);
  fill(255,0,0);
  rect(350,250,200,100);
  ellipse(350,250,200,100);
  fill(0,255,0);
  triangle(50,50, 350,100, 80, 300);
}
