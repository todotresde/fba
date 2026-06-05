void setup() {
  size(400, 400);
}

void draw() {
  for (int j=0; j<10; j++) {
    for (int i=0; i<10; i++) {
      rect(j*40, i*40, 40, 40);
    }
  }
}
