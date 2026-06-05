void setup() {
  size(400, 400);
}

void draw() {
  /*
  i=0 => i*50 = 0
  i=1 => i*50 = 50
  i=2 => i*50 = 100
  i=3 => i*50 = 150
  i=4 => i*50 = 200
  i=5 => NO EXECUTA
   */
  for (int i=0; i<5; i++) {
    rect(i*50, 200, 50, 50);
  }
  
}
