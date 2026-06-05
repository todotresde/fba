void setup() {
  size(400, 400);
}

void draw() {
  for (int i=0; i<10; i++) {
    fill(255 - i*10,0,0);
    rect(i*40, 200, 40, 40);
  }
  
}
