int tam = 50;

void setup(){
  size(400,400);
  textSize(20);
}

void draw(){
  background(200);
  
  // i=0 -> 0,0 -> 0,0
  // i=1 -> 50,0 -> 50,0
  // i=2 -> 100,0 -> 100,0
  // i=3 -> 150,0 -> 150,0
  for(int i = 0; i < 4; i++){
    pushMatrix();
    translate(i*tam, 0);
    rect(0,0, tam, tam);
    popMatrix();
  }
}

void mouseClicked(){
}
