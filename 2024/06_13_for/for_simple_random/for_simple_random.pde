int cant = 100;
int tam;

void setup(){
  size(800,800);
  tam = width/cant;
  //frameRate(1);
}

void draw(){
  background(200);
  for(int i=0; i<100;i++){
    int x = floor(random(0,width-tam));
    int y = floor(random(0,height-tam));
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
