int cant = 10;
int tam;

void setup(){
  size(400,400);
  tam = width/cant;
  frameRate(2);
}

void draw(){
  background(200);
  for(int i=0; i<cant;i++){
    int x = floor(random(0,width));
    int y = floor(random(0,height));
    rect(x,y,tam,tam);
  }
}

void mousePressed(){
  cant++;
  tam = width/cant;
}

void keyPressed(){
  cant--;
  tam = width/cant;
}
