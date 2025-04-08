void setup(){
  size(400,400);
}

void draw(){
  background(#E6EA21);
  
  stroke(0,0,200);
  strokeWeight(5);
  rect(200,0,50,50);
  
  fill(255,0,0);
  stroke(0,220,0);
  strokeWeight(20);
  triangle(0,400,200,200, 400, 400);
  
  noFill();
  rect(0,0,50,20);
}
