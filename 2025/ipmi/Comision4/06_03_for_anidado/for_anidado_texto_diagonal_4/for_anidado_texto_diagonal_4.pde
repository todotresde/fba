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
      // Aquellas celdas cuya suma i,j sea igual a 9
      // ó que i sea igual a j
      if(i+j == cant-1 || i == j){
        fill(0);
      }else{
        fill(255);
      }
      rect(i*tam,j*tam,tam,tam);
      fill(0);
      text(i + "-" + j, i*tam,(j*tam)+tam/2);
    }
  }
  // j=0, i=0, posX=0, posY=0
  // j=0, i=1, posX=40, posY=0
  // j=0, i=2, posX=80, posY=0
  // j=0, i=3, posX=120, posY=0
  // ...
  // j=0, i=9, posX=360, posY=0
  // j=1, i=0, posX=0, posY=40
  // j=1, i=1, posX=40, posY=40
  // j=1, i=2, posX=80, posY=40
  // j=1, i=3, posX=120, posY=40
  // ...
  // j=1, i=9, posX=360, posY=40
  // j=2, i=9, posX=360, posY=80
  // j=2, i=0, posX=0, posY=80
}
