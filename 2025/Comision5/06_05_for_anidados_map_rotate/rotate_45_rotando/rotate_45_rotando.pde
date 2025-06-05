int angulo = 0;

void setup() {
  size(400, 400);
}

void draw() {
  rotate(radians(angulo));
  rect(0,0,40,50);
  rect(200,200,40,50);
  angulo++;
}
