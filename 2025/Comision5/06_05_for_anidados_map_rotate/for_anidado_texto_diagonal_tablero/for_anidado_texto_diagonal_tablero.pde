int posX = 0;
int tam;
int cant = 10;

void setup() {
  size(400, 400);
  tam = width/cant;
  frameRate = 1;
  textSize(20);
}

void draw() { 
  for(int j=0;j<cant;j=j+1){
    for(int i=0;i<cant;i=i+1){
      if((i+j)%2 == 0){
        fill(0);
      }else{
        fill(255);
      }
      rect(i*tam,j*tam,tam,tam);
      fill(0);
      text(i + "-" + j, i*tam,(j*tam)+tam/2);
    }
  }
}
