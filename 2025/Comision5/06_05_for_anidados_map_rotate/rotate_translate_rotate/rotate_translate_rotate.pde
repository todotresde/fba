int angulo = 0;

void setup() {
  size(400, 400);
}

void draw() {
  background(200);
  translate(200,200);
  rotate(radians(angulo));
  fill(255);
  rect(0,0,40,50);
  noFill();
  rect(0,0,width,height);
  angulo++;
}
