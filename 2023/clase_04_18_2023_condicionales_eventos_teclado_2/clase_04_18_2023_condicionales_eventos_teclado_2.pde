boolean lapiz = true;
int anchoLinea = 1;

void setup() {
  size(400, 400);
}
void draw() {
  //background(200);
  strokeWeight(anchoLinea);
  
  if(lapiz == true){
    stroke(0);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }else{
    fill(200);
    noStroke();
    ellipse(mouseX, mouseY, 50, 50);
  }
  
}

void mousePressed(){
  background(200);
}

void keyPressed(){
  if(key == 'v'){
    stroke(0,255,0);
  }else if(key == 'n'){
    stroke(0);
  }else if(key == 'r'){
    stroke(255,0,0);
  }else if(key == 'a'){
    stroke(0,0,255);
  }else if(key == 'b'){
    lapiz = !lapiz;
  }else if(key == '+'){
    anchoLinea++;
  }
}
