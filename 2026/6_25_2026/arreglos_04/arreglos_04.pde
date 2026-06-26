boolean [] pos = new boolean[10];

void setup() {
  size(400, 400);
}

void draw() {
  background(200);
  for(int i=0;i<10;i++){
    if(mousePressed){
      if(mouseX>i*40 && mouseX<i*40+40){
        pos[i] = true;
      }
    }
    
    if(pos[i] == true){
      fill(0);
    }else{
      fill(255);
    }
    
    rect(i*40,40,40,40);
  }
}

void keyPressed(){

}
