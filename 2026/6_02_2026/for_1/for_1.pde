void setup() {
  size(400, 400);
}

void draw() {
  // i = 0 => 0
  // i = 1 => 50
  // i = 2 => 100
  // i = 3 => 150
  // i = 4
  // i = 5 XXXXXX
  for (int i=0; i<5; i++) {
    rect(i * 50, 0, 50, 50);
  }
  
  // i = 100
  // i = 80
  // i = 60
  // i = 40
  // i = 20
  // i = 0 XXXXXX
  for (int i=100; i>0; i-=20) {
    rect(i * 50, 200, 50, 50);
  }
}
