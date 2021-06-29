int grados = 0;
int click = 0;
int movX = 0;

void setup(){
  size(400,400);
  textSize(20);
}

void draw(){
  background(200);
  text("Click: " + click, 200, 100);
  translate(movX,50);
  rotate(radians(grados));
  rect(0,0,50,50);
  rect(300,300,50,50);
  text("MouseX: " + mouseX + " MouseY: " + mouseY, 100, 50);
}

void mouseClicked(){
  if(mouseX > 300 && mouseX < 300 + 50 && mouseY > 300 && mouseY < 300 + 50){
    click++;
  }
}

void keyPressed(){
  //grados += 5;
  
  if(keyCode == RIGHT){
    movX += 50;
  }else if(keyCode == LEFT){
    movX -= 50;
  }
}
