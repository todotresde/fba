int cant = 10;
int tam;

void setup(){
  size(400,400);
  tam = width/cant;
  rectMode(CENTER);
}

void draw(){
  background(200);
  for(int i=0; i<cant;i++){
    int x = floor(random(0,width));
    int y = floor(random(0,width));
    if(dist(mouseX, mouseY, x, y)< 100)
      rect(x,y,tam,tam);
  }
}

void mousePressed(){
  cant++;
}

void keyPressed(){
  cant--;
}
