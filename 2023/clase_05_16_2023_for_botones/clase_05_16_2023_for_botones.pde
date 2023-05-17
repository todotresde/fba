color miColor = color(255,0,0);

void setup() {
  size(500, 500);
}

void draw(){
  for(int i=0; i<4;i++){
    fill(miColor);
    ellipse(50 + (i*100),100,50,50);
  }
}

void mouseClicked(){
  for(int i=0; i<4;i++){
    if(dist(mouseX, mouseY, 50 + (i*100), 100) < 25){
      miColor = color(0,255,0);
    }
  }
}
