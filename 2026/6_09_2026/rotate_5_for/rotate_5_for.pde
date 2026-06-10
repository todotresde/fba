float grados = 0;

void setup() {
  size(400, 400);
}

void draw() {
  background(200);

  for (int i=0; i<10; i++) {
    //pushMatrix();
    translate(i*50, 0);
    rotate(radians(grados));
    rect(0, 0, 50, 50);
    //popMatrix();
  }

  grados+=0.3;
}
